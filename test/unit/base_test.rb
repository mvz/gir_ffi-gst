require_relative '../test_helper'

describe Gst do
  describe '::init' do
    before do
      module DummyGst
        def self.init(arr)
          ['baz', 'qux', 'zonk']
        end

        include GirFFIGst::AutoArgv
      end
    end

    it 'does not accept any arguments' do
      assert_raises(ArgumentError) { DummyGst.init 1, ['foo'] }
      assert_raises(ArgumentError) { DummyGst.init ['foo'] }
    end

    it 'replaces ARGV with the tail of the result of the original init function' do
      ARGV.replace ['foo', 'bar']
      DummyGst.init
      assert_equal ['qux', 'zonk'], ARGV.to_a
    end
  end
end

describe 'loaded namespaces' do
  it 'includes GstBase' do
    GstBase::BaseSink.must_be_instance_of Class
  end
end
