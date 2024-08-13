// generated by diplomat-tool

part of 'lib.g.dart';

/// An ICU4X Unicode Map Property object, capable of querying whether a code point (key) to obtain the Unicode property value, for a specific Unicode property.
///
/// For properties whose values fit into 16 bits.
///
/// See the [Rust documentation for `properties`](https://docs.rs/icu/latest/icu/properties/index.html) for more information.
///
/// See the [Rust documentation for `CodePointMapData`](https://docs.rs/icu/latest/icu/properties/maps/struct.CodePointMapData.html) for more information.
///
/// See the [Rust documentation for `CodePointMapDataBorrowed`](https://docs.rs/icu/latest/icu/properties/maps/struct.CodePointMapDataBorrowed.html) for more information.
final class CodePointMapData16 implements ffi.Finalizable {
  final ffi.Pointer<ffi.Opaque> _ffi;

  // These are "used" in the sense that they keep dependencies alive
  // ignore: unused_field
  final core.List<Object> _selfEdge;

  // This takes in a list of lifetime edges (including for &self borrows)
  // corresponding to data this may borrow from. These should be flat arrays containing
  // references to objects, and this object will hold on to them to keep them alive and
  // maintain borrow validity.
  CodePointMapData16._fromFfi(this._ffi, this._selfEdge) {
    if (_selfEdge.isEmpty) {
      _finalizer.attach(this, _ffi.cast());
    }
  }

  static final _finalizer = ffi.NativeFinalizer(
      ffi.Native.addressOf(_ICU4XCodePointMapData16_destroy));

  /// Gets the value for a code point.
  ///
  /// See the [Rust documentation for `get`](https://docs.rs/icu/latest/icu/properties/maps/struct.CodePointMapDataBorrowed.html#method.get) for more information.
  int operator [](Rune cp) {
    final result = _ICU4XCodePointMapData16_get(_ffi, cp);
    return result;
  }

  /// Produces an iterator over ranges of code points that map to `value`
  ///
  /// See the [Rust documentation for `iter_ranges_for_value`](https://docs.rs/icu/latest/icu/properties/maps/struct.CodePointMapDataBorrowed.html#method.iter_ranges_for_value) for more information.
  CodePointRangeIterator iterRangesForValue(int value) {
    // This lifetime edge depends on lifetimes: 'a
    core.List<Object> aEdges = [this];
    final result = _ICU4XCodePointMapData16_iter_ranges_for_value(_ffi, value);
    return CodePointRangeIterator._fromFfi(result, [], aEdges);
  }

  /// Produces an iterator over ranges of code points that do not map to `value`
  ///
  /// See the [Rust documentation for `iter_ranges_for_value_complemented`](https://docs.rs/icu/latest/icu/properties/maps/struct.CodePointMapDataBorrowed.html#method.iter_ranges_for_value_complemented) for more information.
  CodePointRangeIterator iterRangesForValueComplemented(int value) {
    // This lifetime edge depends on lifetimes: 'a
    core.List<Object> aEdges = [this];
    final result = _ICU4XCodePointMapData16_iter_ranges_for_value_complemented(
        _ffi, value);
    return CodePointRangeIterator._fromFfi(result, [], aEdges);
  }

  /// Gets a [`CodePointSetData`] representing all entries in this map that map to the given value
  ///
  /// See the [Rust documentation for `get_set_for_value`](https://docs.rs/icu/latest/icu/properties/maps/struct.CodePointMapDataBorrowed.html#method.get_set_for_value) for more information.
  CodePointSetData getSetForValue(int value) {
    final result = _ICU4XCodePointMapData16_get_set_for_value(_ffi, value);
    return CodePointSetData._fromFfi(result, []);
  }

  /// See the [Rust documentation for `script`](https://docs.rs/icu/latest/icu/properties/maps/fn.script.html) for more information.
  ///
  /// Throws [Error] on failure.
  factory CodePointMapData16.script(DataProvider provider) {
    final result = _ICU4XCodePointMapData16_load_script(provider._ffi);
    if (!result.isOk) {
      throw Error.values.firstWhere((v) => v._ffi == result.union.err);
    }
    return CodePointMapData16._fromFfi(result.union.ok, []);
  }
}

@meta.ResourceIdentifier('ICU4XCodePointMapData16_destroy')
@ffi.Native<ffi.Void Function(ffi.Pointer<ffi.Void>)>(
    isLeaf: true, symbol: 'ICU4XCodePointMapData16_destroy')
// ignore: non_constant_identifier_names
external void _ICU4XCodePointMapData16_destroy(ffi.Pointer<ffi.Void> self);

@meta.ResourceIdentifier('ICU4XCodePointMapData16_get')
@ffi.Native<ffi.Uint16 Function(ffi.Pointer<ffi.Opaque>, ffi.Uint32)>(
    isLeaf: true, symbol: 'ICU4XCodePointMapData16_get')
// ignore: non_constant_identifier_names
external int _ICU4XCodePointMapData16_get(
    ffi.Pointer<ffi.Opaque> self, Rune cp);

@meta.ResourceIdentifier('ICU4XCodePointMapData16_iter_ranges_for_value')
@ffi.Native<
        ffi.Pointer<ffi.Opaque> Function(ffi.Pointer<ffi.Opaque>, ffi.Uint16)>(
    isLeaf: true, symbol: 'ICU4XCodePointMapData16_iter_ranges_for_value')
// ignore: non_constant_identifier_names
external ffi.Pointer<ffi.Opaque> _ICU4XCodePointMapData16_iter_ranges_for_value(
    ffi.Pointer<ffi.Opaque> self, int value);

@meta.ResourceIdentifier(
    'ICU4XCodePointMapData16_iter_ranges_for_value_complemented')
@ffi.Native<
        ffi.Pointer<ffi.Opaque> Function(ffi.Pointer<ffi.Opaque>, ffi.Uint16)>(
    isLeaf: true,
    symbol: 'ICU4XCodePointMapData16_iter_ranges_for_value_complemented')
// ignore: non_constant_identifier_names
external ffi.Pointer<ffi.Opaque>
    _ICU4XCodePointMapData16_iter_ranges_for_value_complemented(
        ffi.Pointer<ffi.Opaque> self, int value);

@meta.ResourceIdentifier('ICU4XCodePointMapData16_get_set_for_value')
@ffi.Native<
        ffi.Pointer<ffi.Opaque> Function(ffi.Pointer<ffi.Opaque>, ffi.Uint16)>(
    isLeaf: true, symbol: 'ICU4XCodePointMapData16_get_set_for_value')
// ignore: non_constant_identifier_names
external ffi.Pointer<ffi.Opaque> _ICU4XCodePointMapData16_get_set_for_value(
    ffi.Pointer<ffi.Opaque> self, int value);

@meta.ResourceIdentifier('ICU4XCodePointMapData16_load_script')
@ffi.Native<_ResultOpaqueInt32 Function(ffi.Pointer<ffi.Opaque>)>(
    isLeaf: true, symbol: 'ICU4XCodePointMapData16_load_script')
// ignore: non_constant_identifier_names
external _ResultOpaqueInt32 _ICU4XCodePointMapData16_load_script(
    ffi.Pointer<ffi.Opaque> provider);
