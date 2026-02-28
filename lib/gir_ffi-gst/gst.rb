# frozen_string_literal: true

# Overrides for Gst module functions
module Gst
  setup_method! "init"

  include GirFFIGst::AutoArgv
end
