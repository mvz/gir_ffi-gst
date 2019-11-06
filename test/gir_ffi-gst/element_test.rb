# frozen_string_literal: true

require_relative "../test_helper"

describe Gst::Element do
  let(:fakesink) { Gst::ElementFactory.make "fakesink", "sinkname" }
  let(:queue) { Gst::ElementFactory.make "queue", "queuename" }
  let(:fakesrc) { Gst::ElementFactory.make "fakesrc", "srcname" }

  describe "#link_many" do
    it "links multiple elements" do
      fakesrc.link_many [queue, fakesink]
      _(fakesrc.iterate_src_pads.first.peer.parent).must_equal queue
      _(queue.iterate_src_pads.first.peer.parent).must_equal fakesink
    end

    it "returns success if linking succeeds" do
      result = fakesrc.link_many [queue, fakesink]
      _(result).must_equal true
    end

    it "returns failure if linking fails" do
      othersource = Gst::ElementFactory.make "fakesrc", nil
      othersource.link queue

      result = fakesrc.link_many [queue, fakesink]
      _(result).must_equal false
    end

    it "returns true when linking 0 elements" do
      result = fakesrc.link_many []
      _(result).must_equal true
    end
  end
end
