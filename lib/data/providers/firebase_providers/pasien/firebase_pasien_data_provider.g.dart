// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'firebase_pasien_data_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$firebasePasienDataHash() =>
    r'e45347fafb447eb103389ab8a25e5c5d778d8e61';

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

abstract class _$FirebasePasienData
    extends BuildlessAutoDisposeAsyncNotifier<Pasien> {
  late final Pasien pasien;

  Future<Pasien> build(
    Pasien pasien,
  );
}

/// See also [FirebasePasienData].
@ProviderFor(FirebasePasienData)
const firebasePasienDataProvider = FirebasePasienDataFamily();

/// See also [FirebasePasienData].
class FirebasePasienDataFamily extends Family<AsyncValue<Pasien>> {
  /// See also [FirebasePasienData].
  const FirebasePasienDataFamily();

  /// See also [FirebasePasienData].
  FirebasePasienDataProvider call(
    Pasien pasien,
  ) {
    return FirebasePasienDataProvider(
      pasien,
    );
  }

  @override
  FirebasePasienDataProvider getProviderOverride(
    covariant FirebasePasienDataProvider provider,
  ) {
    return call(
      provider.pasien,
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
  String? get name => r'firebasePasienDataProvider';
}

/// See also [FirebasePasienData].
class FirebasePasienDataProvider
    extends AutoDisposeAsyncNotifierProviderImpl<FirebasePasienData, Pasien> {
  /// See also [FirebasePasienData].
  FirebasePasienDataProvider(
    this.pasien,
  ) : super.internal(
          () => FirebasePasienData()..pasien = pasien,
          from: firebasePasienDataProvider,
          name: r'firebasePasienDataProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$firebasePasienDataHash,
          dependencies: FirebasePasienDataFamily._dependencies,
          allTransitiveDependencies:
              FirebasePasienDataFamily._allTransitiveDependencies,
        );

  final Pasien pasien;

  @override
  bool operator ==(Object other) {
    return other is FirebasePasienDataProvider && other.pasien == pasien;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, pasien.hashCode);

    return _SystemHash.finish(hash);
  }

  @override
  Future<Pasien> runNotifierBuild(
    covariant FirebasePasienData notifier,
  ) {
    return notifier.build(
      pasien,
    );
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
