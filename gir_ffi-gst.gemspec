# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name = "gir_ffi-gst"
  spec.version = "0.0.12"
  spec.authors = ["Matijs van Zuijlen"]
  spec.email = ["matijs@matijs.net"]

  spec.summary = "GirFFI-based bindings for GStreamer"
  spec.description =
    "Bindings for GStreamer generated by GirFFI, with an eclectic set of overrides."
  spec.homepage = "http://www.github.com/mvz/gir_ffi-gst"
  spec.license = "LGPL-2.1+"

  spec.required_ruby_version = ">= 2.5.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/mvz/gir_ffi-gst"
  spec.metadata["changelog_uri"] = "https://github.com/mvz/gir_ffi-gst/blob/master/Changelog.md"

  spec.files = Dir["{lib,test}/**/*.rb", "README.md", "Rakefile", "COPYING.LIB"]
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "gir_ffi", "~> 0.15.2"

  spec.add_development_dependency "minitest", "~> 5.12"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "rubocop", "~> 0.89.0"
  spec.add_development_dependency "rubocop-minitest", "~> 0.10.1"
  spec.add_development_dependency "rubocop-packaging", "~> 0.2.0"
  spec.add_development_dependency "rubocop-performance", "~> 1.7.0"
end
