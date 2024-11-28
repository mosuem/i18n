// generated by diplomat-tool

part of 'lib.g.dart';

/// Priority mode for the ICU4X fallback algorithm.
///
/// See the [Rust documentation for `LocaleFallbackPriority`](https://docs.rs/icu/latest/icu/locid_transform/fallback/enum.LocaleFallbackPriority.html) for more information.
enum LocaleFallbackPriority {
  language,

  region,

  collation;
}