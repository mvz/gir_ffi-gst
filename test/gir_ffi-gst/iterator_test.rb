# frozen_string_literal: true

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
    iterator.map(&:name).must_equal ['testname']
  end

  it 'allows re-starting the iteration' do
    iterator.map(&:name).must_equal ['testname']
    iterator.map(&:name).must_equal ['testname']
  end

  it 'allows breaking off the loop' do
    bin.add Gst::ElementFactory.make 'fakesink', 'othername'
    iterator.map(&:name).must_equal %w(othername testname)
    result = nil
    iterator.each do |it|
      result = it
      break if it.name == 'othername'
    end
    result.name.must_equal 'othername'
  end

  it 'allows redoing an iteration' do
    bin.add Gst::ElementFactory.make 'fakesink', 'othername'
    iterator.map(&:name).must_equal %w(othername testname)
    count = 0
    result = []
    iterator.each do |it|
      count += 1
      result << it.name
      redo if count == 1
    end
    result.must_equal %w(othername othername testname)
  end
end
