require_relative '../test_helper'

describe Gst::Bin do
  it 'allows easy adding, linking and listing of its elements' do
    bin = Gst::Bin.new 'bin'
    bin.add_many [
      Gst::ElementFactory.make('fakesink', 'testsink'),
      Gst::ElementFactory.make('fakesrc', 'testsrc')
    ]
    elements = bin.iterate_elements
    elements.map(&:get_name).must_equal ['testsrc', 'testsink']
  end
end
