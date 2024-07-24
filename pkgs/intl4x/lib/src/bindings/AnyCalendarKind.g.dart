// generated by diplomat-tool

part of 'lib.g.dart';

/// The various calendar types currently supported by [`Calendar`]
///
/// See the [Rust documentation for `AnyCalendarKind`](https://docs.rs/icu/latest/icu/calendar/enum.AnyCalendarKind.html) for more information.
enum AnyCalendarKind {
  /// The kind of an Iso calendar
  iso,

  /// The kind of a Gregorian calendar
  gregorian,

  /// The kind of a Buddhist calendar
  buddhist,

  /// The kind of a Japanese calendar with modern eras
  japanese,

  /// The kind of a Japanese calendar with modern and historic eras
  japaneseExtended,

  /// The kind of an Ethiopian calendar, with Amete Mihret era
  ethiopian,

  /// The kind of an Ethiopian calendar, with Amete Alem era
  ethiopianAmeteAlem,

  /// The kind of a Indian calendar
  indian,

  /// The kind of a Coptic calendar
  coptic,

  /// The kind of a Dangi calendar
  dangi,

  /// The kind of a Chinese calendar
  chinese,

  /// The kind of a Hebrew calendar
  hebrew,

  /// The kind of a Islamic civil calendar
  islamicCivil,

  /// The kind of a Islamic observational calendar
  islamicObservational,

  /// The kind of a Islamic tabular calendar
  islamicTabular,

  /// The kind of a Islamic Umm al-Qura calendar
  islamicUmmAlQura,

  /// The kind of a Persian calendar
  persian,

  /// The kind of a Roc calendar
  roc;

  /// Read the calendar type off of the -u-ca- extension on a locale.
  ///
  /// Returns nothing if there is no calendar on the locale or if the locale's calendar
  /// is not known or supported.
  ///
  /// See the [Rust documentation for `get_for_locale`](https://docs.rs/icu/latest/icu/calendar/enum.AnyCalendarKind.html#method.get_for_locale) for more information.
  static AnyCalendarKind? getForLocale(Locale locale) {
    final result = _ICU4XAnyCalendarKind_get_for_locale(locale._ffi);
    if (!result.isOk) {
      return null;
    }
    return AnyCalendarKind.values[result.union.ok];
  }

  /// Obtain the calendar type given a BCP-47 -u-ca- extension string.
  ///
  /// Returns nothing if the calendar is not known or supported.
  ///
  /// See the [Rust documentation for `get_for_bcp47_value`](https://docs.rs/icu/latest/icu/calendar/enum.AnyCalendarKind.html#method.get_for_bcp47_value) for more information.
  static AnyCalendarKind? getForBcp47(String s) {
    final temp = ffi2.Arena();
    final sView = s.utf8View;
    final result =
        _ICU4XAnyCalendarKind_get_for_bcp47(sView.allocIn(temp), sView.length);
    temp.releaseAll();
    if (!result.isOk) {
      return null;
    }
    return AnyCalendarKind.values[result.union.ok];
  }

  /// Obtain the string suitable for use in the -u-ca- extension in a BCP47 locale.
  ///
  /// See the [Rust documentation for `as_bcp47_string`](https://docs.rs/icu/latest/icu/calendar/enum.AnyCalendarKind.html#method.as_bcp47_string) for more information.
  ///
  /// Throws [Error] on failure.
  String get bcp47 {
    final writeable = _Writeable();
    final result = _ICU4XAnyCalendarKind_bcp47(index, writeable._ffi);
    if (!result.isOk) {
      throw Error.values.firstWhere((v) => v._ffi == result.union.err);
    }
    return writeable.finalize();
  }
}

@meta.ResourceIdentifier('ICU4XAnyCalendarKind_get_for_locale')
@ffi.Native<_ResultInt32Void Function(ffi.Pointer<ffi.Opaque>)>(
    isLeaf: true, symbol: 'ICU4XAnyCalendarKind_get_for_locale')
// ignore: non_constant_identifier_names
external _ResultInt32Void _ICU4XAnyCalendarKind_get_for_locale(
    ffi.Pointer<ffi.Opaque> locale);

@meta.ResourceIdentifier('ICU4XAnyCalendarKind_get_for_bcp47')
@ffi.Native<_ResultInt32Void Function(ffi.Pointer<ffi.Uint8>, ffi.Size)>(
    isLeaf: true, symbol: 'ICU4XAnyCalendarKind_get_for_bcp47')
// ignore: non_constant_identifier_names
external _ResultInt32Void _ICU4XAnyCalendarKind_get_for_bcp47(
    ffi.Pointer<ffi.Uint8> sData, int sLength);

@meta.ResourceIdentifier('ICU4XAnyCalendarKind_bcp47')
@ffi.Native<_ResultVoidInt32 Function(ffi.Int32, ffi.Pointer<ffi.Opaque>)>(
    isLeaf: true, symbol: 'ICU4XAnyCalendarKind_bcp47')
// ignore: non_constant_identifier_names
external _ResultVoidInt32 _ICU4XAnyCalendarKind_bcp47(
    int self, ffi.Pointer<ffi.Opaque> writeable);
