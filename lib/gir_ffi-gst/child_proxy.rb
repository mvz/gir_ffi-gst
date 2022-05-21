# frozen_string_literal: true

Gst.load_class :ChildProxy

module Gst
  # Overrides for GstChildProxy
  module ChildProxy
    setup_instance_method :get_property

    remove_method :get_property

    def get_property(name)
      pspec = class_struct.find_property name
      gvalue = GObject::Value.for_gtype pspec.value_type
      Gst::Lib.gst_child_proxy_get_property self, name, gvalue
      gvalue
    end
  end
end
