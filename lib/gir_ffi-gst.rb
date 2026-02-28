# frozen_string_literal: true

require "gir_ffi"

GirFFI.setup :Gst
GirFFI.setup :GstBase

require "gir_ffi-gst/base"
require "gir_ffi-gst/gst"
require "gir_ffi-gst/bin"
require "gir_ffi-gst/child_proxy"
require "gir_ffi-gst/element"
require "gir_ffi-gst/iterator"
