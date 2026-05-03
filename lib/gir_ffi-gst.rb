# frozen_string_literal: true

require "gir_ffi"

require "gir_ffi-gst/gst"

Gst.init

require "gir_ffi-gst/bin"
require "gir_ffi-gst/child_proxy"
require "gir_ffi-gst/element"
require "gir_ffi-gst/iterator"

GirFFI.setup :GstBase
