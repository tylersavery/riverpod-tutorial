// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'color_detail_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$colorDetailHash() => r'c8ab7c156781ee83f26a6173fa96db39fff4274b';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [colorDetail].
@ProviderFor(colorDetail)
const colorDetailProvider = ColorDetailFamily();

/// See also [colorDetail].
class ColorDetailFamily extends Family<AsyncValue<ColorResult?>> {
  /// See also [colorDetail].
  const ColorDetailFamily();

  /// See also [colorDetail].
  ColorDetailProvider call(
    String hexcode,
  ) {
    return ColorDetailProvider(
      hexcode,
    );
  }

  @override
  ColorDetailProvider getProviderOverride(
    covariant ColorDetailProvider provider,
  ) {
    return call(
      provider.hexcode,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'colorDetailProvider';
}

/// See also [colorDetail].
class ColorDetailProvider extends FutureProvider<ColorResult?> {
  /// See also [colorDetail].
  ColorDetailProvider(
    String hexcode,
  ) : this._internal(
          (ref) => colorDetail(
            ref as ColorDetailRef,
            hexcode,
          ),
          from: colorDetailProvider,
          name: r'colorDetailProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$colorDetailHash,
          dependencies: ColorDetailFamily._dependencies,
          allTransitiveDependencies:
              ColorDetailFamily._allTransitiveDependencies,
          hexcode: hexcode,
        );

  ColorDetailProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.hexcode,
  }) : super.internal();

  final String hexcode;

  @override
  Override overrideWith(
    FutureOr<ColorResult?> Function(ColorDetailRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ColorDetailProvider._internal(
        (ref) => create(ref as ColorDetailRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        hexcode: hexcode,
      ),
    );
  }

  @override
  FutureProviderElement<ColorResult?> createElement() {
    return _ColorDetailProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ColorDetailProvider && other.hexcode == hexcode;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, hexcode.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ColorDetailRef on FutureProviderRef<ColorResult?> {
  /// The parameter `hexcode` of this provider.
  String get hexcode;
}

class _ColorDetailProviderElement extends FutureProviderElement<ColorResult?>
    with ColorDetailRef {
  _ColorDetailProviderElement(super.provider);

  @override
  String get hexcode => (origin as ColorDetailProvider).hexcode;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
