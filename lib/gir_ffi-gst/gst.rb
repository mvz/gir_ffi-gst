# frozen_string_literal: true

require "gir_ffi"
require_relative "auto_argv"

GirFFI.setup :Gst

# Overrides for Gst module functions
module Gst
  setup_method! "init"

  include GirFFIGst::AutoArgv
end
