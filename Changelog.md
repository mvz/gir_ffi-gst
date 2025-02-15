# Changelog

## 0.0.16 / 2025-02-07

* Support Ruby 3.1 through 3.4, dropping support for Ruby 3.0 ([#106] by [mvz])
* Update GirFFI dependency to version 0.18.0 ([#107] by [mvz])

[#106]: https://github.com/mvz/gir_ffi-gst/pull/106
[#107]: https://github.com/mvz/gir_ffi-gst/pull/107

## 0.0.15 / 2023-12-31

* Support Ruby 3.0 and up, dropping support for Ruby 2.7 ([#100] by [mvz])
* Update GirFFI dependency to version 0.17.0 ([#101] by [mvz])

[mvz]: https://github.com/mvz

[#100]: https://github.com/mvz/gir_ffi-gst/pull/100
[#101]: https://github.com/mvz/gir_ffi-gst/pull/101

## 0.0.14 / 2022-05-21

* Update dependency on GirFFI to 0.16.0
* Drop support for Ruby 2.6 and JRuby

## 0.0.13 / 2022-01-21

* Update dependency on GirFFI to 0.15.2
* Drop support for Ruby 2.4 and 2.5
* Support up to Ruby 3.1

## 0.0.12 / 2019-10-19

* Update dependency on GirFFI to 0.15.0
* Drop support for Ruby 2.2 and 2.3

## 0.0.11 / 2018-09-27

* Update dependency on GirFFI to 0.14.0

## 0.0.10 / 2018-09-08

* Drop support for Ruby 2.1
* Update dependency on GirFFI to 0.13.0

## 0.0.9 / 2018-06-01

* Restore support for Ruby 2.1 and 2.2
* Add support for JRuby

## 0.0.8 / 2018-03-25

* Update dependency on GirFFI to 0.12.0
* Require CRuby 2.3 or above

## 0.0.7 / 2016-11-05

* Update dependency on GirFFI to 0.11.0

## 0.0.6 / 2016-03-23

* Update dependency on GirFFI to 0.10.0

## 0.0.5 / 2016-01-21

* Load GstBase namespace by default
* Depend on GirFFI 0.9.1 to ensure ability to handle all signals

## 0.0.4 / 2016-01-21

* Make Gst.init to not take any arguments
* Depend on GirFFI 0.9.0
* Update overrides to work with GirFFI 0.9.0

## 0.0.3 / 2015-12-12

* Make Iterator#each start at the beginning every time

## 0.0.2 / 2015-11-13

* Add override for `ChildProxy#get_property`

## 0.0.1 / 2015-11-07

* Initial release.
