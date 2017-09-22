Gst.load_class :Element

module Gst
  # Overrides for GstElement
  class Element
    def link_many(elements)
      [self, *elements].each_cons(2).all? { |src, sink| src.link(sink) }
    end
  end
end
