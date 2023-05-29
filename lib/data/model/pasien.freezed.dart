// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pasien.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Pasien _$PasienFromJson(Map<String, dynamic> json) {
  return _Pasien.fromJson(json);
}

/// @nodoc
mixin _$Pasien {
  String get id => throw _privateConstructorUsedError;
  String get nama => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  List<Map<String, dynamic>> get wali => throw _privateConstructorUsedError;
  String get nik => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PasienCopyWith<Pasien> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasienCopyWith<$Res> {
  factory $PasienCopyWith(Pasien value, $Res Function(Pasien) then) =
      _$PasienCopyWithImpl<$Res, Pasien>;
  @useResult
  $Res call(
      {String id,
      String nama,
      String email,
      List<Map<String, dynamic>> wali,
      String nik});
}

/// @nodoc
class _$PasienCopyWithImpl<$Res, $Val extends Pasien>
    implements $PasienCopyWith<$Res> {
  _$PasienCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? nama = null,
    Object? email = null,
    Object? wali = null,
    Object? nik = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      nama: null == nama
          ? _value.nama
          : nama // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      wali: null == wali
          ? _value.wali
          : wali // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      nik: null == nik
          ? _value.nik
          : nik // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PasienCopyWith<$Res> implements $PasienCopyWith<$Res> {
  factory _$$_PasienCopyWith(_$_Pasien value, $Res Function(_$_Pasien) then) =
      __$$_PasienCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String nama,
      String email,
      List<Map<String, dynamic>> wali,
      String nik});
}

/// @nodoc
class __$$_PasienCopyWithImpl<$Res>
    extends _$PasienCopyWithImpl<$Res, _$_Pasien>
    implements _$$_PasienCopyWith<$Res> {
  __$$_PasienCopyWithImpl(_$_Pasien _value, $Res Function(_$_Pasien) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? nama = null,
    Object? email = null,
    Object? wali = null,
    Object? nik = null,
  }) {
    return _then(_$_Pasien(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      nama: null == nama
          ? _value.nama
          : nama // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      wali: null == wali
          ? _value._wali
          : wali // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      nik: null == nik
          ? _value.nik
          : nik // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Pasien implements _Pasien {
  const _$_Pasien(
      {required this.id,
      required this.nama,
      required this.email,
      required final List<Map<String, dynamic>> wali,
      required this.nik})
      : _wali = wali;

  factory _$_Pasien.fromJson(Map<String, dynamic> json) =>
      _$$_PasienFromJson(json);

  @override
  final String id;
  @override
  final String nama;
  @override
  final String email;
  final List<Map<String, dynamic>> _wali;
  @override
  List<Map<String, dynamic>> get wali {
    if (_wali is EqualUnmodifiableListView) return _wali;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_wali);
  }

  @override
  final String nik;

  @override
  String toString() {
    return 'Pasien(id: $id, nama: $nama, email: $email, wali: $wali, nik: $nik)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Pasien &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.nama, nama) || other.nama == nama) &&
            (identical(other.email, email) || other.email == email) &&
            const DeepCollectionEquality().equals(other._wali, _wali) &&
            (identical(other.nik, nik) || other.nik == nik));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, nama, email,
      const DeepCollectionEquality().hash(_wali), nik);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PasienCopyWith<_$_Pasien> get copyWith =>
      __$$_PasienCopyWithImpl<_$_Pasien>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PasienToJson(
      this,
    );
  }
}

abstract class _Pasien implements Pasien {
  const factory _Pasien(
      {required final String id,
      required final String nama,
      required final String email,
      required final List<Map<String, dynamic>> wali,
      required final String nik}) = _$_Pasien;

  factory _Pasien.fromJson(Map<String, dynamic> json) = _$_Pasien.fromJson;

  @override
  String get id;
  @override
  String get nama;
  @override
  String get email;
  @override
  List<Map<String, dynamic>> get wali;
  @override
  String get nik;
  @override
  @JsonKey(ignore: true)
  _$$_PasienCopyWith<_$_Pasien> get copyWith =>
      throw _privateConstructorUsedError;
}
