module Gst
  load_class :Iterator
  class Iterator
    include Enumerable

    def each
      resync
      foreach { |item, _ud| yield item.get_value }
    end
  end
end
