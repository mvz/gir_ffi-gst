# frozen_string_literal: true

require 'gir_ffi'

GirFFI.setup :Gst
GirFFI.setup :GstBase

require_relative 'gir_ffi-gst/base'
require_relative 'gir_ffi-gst/bin'
require_relative 'gir_ffi-gst/child_proxy'
require_relative 'gir_ffi-gst/element'
require_relative 'gir_ffi-gst/iterator'
