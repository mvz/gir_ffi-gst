# frozen_string_literal: true

require_relative '../test_helper'

describe Gst::Bin do
  it 'allows easy adding, linking and listing of its elements' do
    bin = Gst::Bin.new 'bin'
    elements = [
      Gst::ElementFactory.make('fakesink', 'testsink'),
      Gst::ElementFactory.make('queue', 'testqueue'),
      Gst::ElementFactory.make('fakesrc', 'testsrc')
    ]
    bin.add_many elements
    iterator = bin.iterate_elements
    iterator.map(&:get_name).must_equal %w(testsrc testqueue testsink)
    elements.first.link_many elements[1..-1]
  end
end
