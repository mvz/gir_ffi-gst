module Gst
  load_class :ChildProxy

  module ChildProxy
    setup_instance_method :get_property

    remove_method :get_property

    def get_property(name)
      pspec = object_class.find_property name
      gvalue = GObject::Value.for_gtype pspec.value_type
      Gst::Lib.gst_child_proxy_get_property self, name, gvalue
      gvalue
    end
  end
end
