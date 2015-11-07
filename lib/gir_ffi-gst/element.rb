module Gst
  load_class :Element

  class Element
    def link_many elements
      return true if elements.empty?
      first, *rest = elements
      link(first) && first.link_many(rest)
    end
  end
end
