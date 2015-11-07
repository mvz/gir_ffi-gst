module Gst
  load_class :Element

  class Element
    def link_many elements
      [self, *elements].each_cons(2) { |src, sink|
        return false unless src.link sink
      }
      true
    end
  end
end
