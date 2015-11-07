require_relative '../test_helper'

describe Gst::Iterator do
  let(:bin) { Gst::Bin.new 'bin' }
  let(:fakesink) { Gst::ElementFactory.make 'fakesink', 'testname' }
  let(:iterator) { bin.iterate_elements }

  before do
    bin.add fakesink
  end

  it 'behaves like an Enumerable' do
    iterator.must_be_kind_of Gst::Iterator
    iterator.map(&:get_name).must_equal ['testname']
  end
end
