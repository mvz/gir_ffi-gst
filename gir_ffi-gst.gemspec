# frozen_string_literal: true

Gem::Specification.new do |s|
  s.name = 'gir_ffi-gst'
  s.version = '0.0.7'

  s.summary = 'GirFFI-based bindings for GStreamer'
  s.description = 'Bindings for GStreamer generated by GirFFI, with an eclectic set of overrides.'
  s.required_ruby_version = '>= 2.3.0'

  s.license = 'LGPL-2.1+'

  s.authors = ['Matijs van Zuijlen']
  s.email = ['matijs@matijs.net']
  s.homepage = 'http://www.github.com/mvz/gir_ffi-gst'

  s.files = Dir['{lib,test}/**/*.rb', 'README.md', 'Rakefile', 'COPYING.LIB']
  s.test_files = Dir['test/**/*.rb']

  s.add_runtime_dependency('gir_ffi', ['~> 0.12.0'])
  s.add_development_dependency('minitest', ['~> 5.0'])
  s.add_development_dependency('rake', ['~> 12.0'])

  s.require_paths = ['lib']
end
