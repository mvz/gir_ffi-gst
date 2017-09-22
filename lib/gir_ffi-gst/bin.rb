module Gst
  load_class :Bin

  class Bin
    def add_many(elements)
      elements.each { |element| add element }
    end
  end
end
