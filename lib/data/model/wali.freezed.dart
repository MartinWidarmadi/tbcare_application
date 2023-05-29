// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wali.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Wali _$WaliFromJson(Map<String, dynamic> json) {
  return _Wali.fromJson(json);
}

/// @nodoc
mixin _$Wali {
  String get id => throw _privateConstructorUsedError;
  String get nama => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get nik => throw _privateConstructorUsedError;
  List<Map<String, dynamic>> get pasien => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WaliCopyWith<Wali> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WaliCopyWith<$Res> {
  factory $WaliCopyWith(Wali value, $Res Function(Wali) then) =
      _$WaliCopyWithImpl<$Res, Wali>;
  @useResult
  $Res call(
      {String id,
      String nama,
      String email,
      String nik,
      List<Map<String, dynamic>> pasien});
}

/// @nodoc
class _$WaliCopyWithImpl<$Res, $Val extends Wali>
    implements $WaliCopyWith<$Res> {
  _$WaliCopyWithImpl(this._value, this._then);

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
    Object? nik = null,
    Object? pasien = null,
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
      nik: null == nik
          ? _value.nik
          : nik // ignore: cast_nullable_to_non_nullable
              as String,
      pasien: null == pasien
          ? _value.pasien
          : pasien // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WaliCopyWith<$Res> implements $WaliCopyWith<$Res> {
  factory _$$_WaliCopyWith(_$_Wali value, $Res Function(_$_Wali) then) =
      __$$_WaliCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String nama,
      String email,
      String nik,
      List<Map<String, dynamic>> pasien});
}

/// @nodoc
class __$$_WaliCopyWithImpl<$Res> extends _$WaliCopyWithImpl<$Res, _$_Wali>
    implements _$$_WaliCopyWith<$Res> {
  __$$_WaliCopyWithImpl(_$_Wali _value, $Res Function(_$_Wali) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? nama = null,
    Object? email = null,
    Object? nik = null,
    Object? pasien = null,
  }) {
    return _then(_$_Wali(
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
      nik: null == nik
          ? _value.nik
          : nik // ignore: cast_nullable_to_non_nullable
              as String,
      pasien: null == pasien
          ? _value._pasien
          : pasien // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Wali implements _Wali {
  const _$_Wali(
      {required this.id,
      required this.nama,
      required this.email,
      required this.nik,
      required final List<Map<String, dynamic>> pasien})
      : _pasien = pasien;

  factory _$_Wali.fromJson(Map<String, dynamic> json) => _$$_WaliFromJson(json);

  @override
  final String id;
  @override
  final String nama;
  @override
  final String email;
  @override
  final String nik;
  final List<Map<String, dynamic>> _pasien;
  @override
  List<Map<String, dynamic>> get pasien {
    if (_pasien is EqualUnmodifiableListView) return _pasien;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pasien);
  }

  @override
  String toString() {
    return 'Wali(id: $id, nama: $nama, email: $email, nik: $nik, pasien: $pasien)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Wali &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.nama, nama) || other.nama == nama) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.nik, nik) || other.nik == nik) &&
            const DeepCollectionEquality().equals(other._pasien, _pasien));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, nama, email, nik,
      const DeepCollectionEquality().hash(_pasien));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WaliCopyWith<_$_Wali> get copyWith =>
      __$$_WaliCopyWithImpl<_$_Wali>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WaliToJson(
      this,
    );
  }
}

abstract class _Wali implements Wali {
  const factory _Wali(
      {required final String id,
      required final String nama,
      required final String email,
      required final String nik,
      required final List<Map<String, dynamic>> pasien}) = _$_Wali;

  factory _Wali.fromJson(Map<String, dynamic> json) = _$_Wali.fromJson;

  @override
  String get id;
  @override
  String get nama;
  @override
  String get email;
  @override
  String get nik;
  @override
  List<Map<String, dynamic>> get pasien;
  @override
  @JsonKey(ignore: true)
  _$$_WaliCopyWith<_$_Wali> get copyWith => throw _privateConstructorUsedError;
}
