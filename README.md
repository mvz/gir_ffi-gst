# GirFFI-Gst

GirFFI-based Ruby bindings for GStreamer

## Usage

```ruby
require 'gir_ffi-gst'

Gst.init

# More examples to be determined
```

## Install

```bash
gem install gir_ffi-gst
```

## Requirements

This gem depends on the [GirFFI](https://rubygems.org/gems/gir_ffi) gem and
its requirements.

In addition, it needs introspection data for the gstreamer library.

On Debian and Ubuntu, you can get this by installing `gir1.2-gstreamer-1.0`.

This gem has not been tested on Mac OS X or Microsoft Windows. YMMV. Pull
requests to support these platforms are welcome.

## License

Copyright &copy; 2015&ndash;2022, [Matijs van Zuijlen](http://www.matijs.net/)

GirFFI-Gst is free software, distributed under the terms of the GNU Lesser
General Public License, version 2.1 or later. See the file COPYING.LIB for more
information.
