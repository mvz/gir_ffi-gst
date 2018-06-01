# frozen_string_literal: true

Gst.load_class :Iterator

module Gst
  # Overrides for GstIterator
  class Iterator
    include Enumerable

    def each
      resync
      continue = true
      foreach do |item, _ud|
        break unless continue
        continue = false
        yield item.get_value
        continue = true
      end
    end
  end
end
