module Gst
  load_class :Iterator
  class Iterator
    include Enumerable

    def each
      prc = proc { |item, _ud| yield item.get_value }
      resync
      foreach(prc, nil)
    end
  end
end
