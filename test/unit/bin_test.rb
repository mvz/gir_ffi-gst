require_relative '../test_helper'

describe Gst::Bin do
  let(:bin) { Gst::Bin.new 'bin' }
  let(:fakesink) { Gst::ElementFactory.make 'fakesink', 'sinkname' }
  let(:fakesrc) { Gst::ElementFactory.make 'fakesrc', 'srcname' }

  describe '#add_many' do
    it 'adds multiple elements' do
      bin.add_many [fakesink, fakesrc]
      fakesink.parent.must_equal bin
      fakesrc.parent.must_equal bin
    end
  end
end

