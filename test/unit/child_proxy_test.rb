require_relative '../test_helper'

describe Gst::ChildProxy do
  let(:child_proxy) { Gst::Bin.new 'bin' }

  describe '#get_property' do
    it 'returns a gvalue of the correct type' do
      gvalue = child_proxy.get_property 'async-handling'
      gvalue.current_gtype.must_equal GObject::TYPE_BOOLEAN
    end

    it 'returns a gvalue with the correct value' do
      gvalue = child_proxy.get_property 'async-handling'
      gvalue.get_value.must_equal false
    end
  end
end

