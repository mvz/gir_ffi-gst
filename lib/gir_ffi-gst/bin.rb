Gst.load_class :Bin

module Gst
  # Overrides for GstBin
  class Bin
    def add_many(elements)
      elements.each { |element| add element }
    end
  end
end
