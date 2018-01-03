# frozen_string_literal: true

Gst.load_class :Iterator

module Gst
  # Overrides for GstIterator
  class Iterator
    include Enumerable

    def each
      resync
      foreach { |item, _ud| yield item.get_value }
    end
  end
end
