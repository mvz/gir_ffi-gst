require_relative '../test_helper'

describe Gst::Pipeline do
  it 'allows easy enumeration of its elements' do
    pipeline = Gst::ElementFactory.make 'playbin', nil
    elements = pipeline.iterate_elements
    elements.map(&:get_name).must_equal ['playsink']
  end
end
