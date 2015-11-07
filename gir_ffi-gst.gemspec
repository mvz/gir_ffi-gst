# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = 'gir_ffi-gst'
  s.version = '0.0.1'

  s.summary = 'GirFFI-based bindings for GStreamer'
  s.description = 'Bindings for GStreamer generated by GirFFI, with an eclectic set of overrides.'

  s.license = 'LGPL-2.1'

  s.authors = ['Matijs van Zuijlen']
  s.email = ['matijs@matijs.net']
  s.homepage = 'http://www.github.com/mvz/gir_ffi-gst'

  s.files = Dir['{lib,test}/**/*.rb', 'README.md', 'Rakefile', 'COPYING.LIB']
  s.test_files = Dir['test/**/*.rb']

  s.add_runtime_dependency('gir_ffi', ['~> 0.8.2'])
  s.add_development_dependency('minitest', ['~> 5.0'])
  s.add_development_dependency('rake', ['~> 10.1'])
  s.add_development_dependency('pry', ['~> 0.10.2'])

  s.require_paths = ['lib']
end
