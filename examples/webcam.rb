# frozen_string_literal: true

#
# Simple gstreamer player for webcam.
# Does not much more than
# gst-launch-1.0 v4l2src ! autovideosink
#
require "gir_ffi-gst"
Gst.init

mainloop = GLib::MainLoop.new(GLib::MainContext.default, true)

pipeline = Gst::Pipeline.new("pipeline")
src = Gst::ElementFactory.make("v4l2src", "source")
snk = Gst::ElementFactory.make("autovideosink", "display")

pipeline.add_many [src, snk]

pipeline.bus.add_watch GLib::PRIORITY_DEFAULT do |_bus, message|
  type = message.type
  if type[:error]
    puts message.parse_error[0].message
    mainloop.quit
  elsif type[:eos]
    puts "Done!"
    mainloop.quit
  end
  true
end

src.link snk

# TODO: Extract to an override
loop do
  result = pipeline.set_state :playing
  break if result != :async
  state = pipeline.get_state(-1)
  break if state[1] == :playing
end

begin
  mainloop.run
rescue Interrupt
  puts
ensure
  pipeline.set_state :null
end
