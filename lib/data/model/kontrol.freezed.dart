// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'kontrol.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Kontrol _$KontrolFromJson(Map<String, dynamic> json) {
  return _Kontrol.fromJson(json);
}

/// @nodoc
mixin _$Kontrol {
  int get tanggal => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $KontrolCopyWith<Kontrol> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KontrolCopyWith<$Res> {
  factory $KontrolCopyWith(Kontrol value, $Res Function(Kontrol) then) =
      _$KontrolCopyWithImpl<$Res, Kontrol>;
  @useResult
  $Res call({int tanggal});
}

/// @nodoc
class _$KontrolCopyWithImpl<$Res, $Val extends Kontrol>
    implements $KontrolCopyWith<$Res> {
  _$KontrolCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tanggal = null,
  }) {
    return _then(_value.copyWith(
      tanggal: null == tanggal
          ? _value.tanggal
          : tanggal // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_KontrolCopyWith<$Res> implements $KontrolCopyWith<$Res> {
  factory _$$_KontrolCopyWith(
          _$_Kontrol value, $Res Function(_$_Kontrol) then) =
      __$$_KontrolCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int tanggal});
}

/// @nodoc
class __$$_KontrolCopyWithImpl<$Res>
    extends _$KontrolCopyWithImpl<$Res, _$_Kontrol>
    implements _$$_KontrolCopyWith<$Res> {
  __$$_KontrolCopyWithImpl(_$_Kontrol _value, $Res Function(_$_Kontrol) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tanggal = null,
  }) {
    return _then(_$_Kontrol(
      tanggal: null == tanggal
          ? _value.tanggal
          : tanggal // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Kontrol implements _Kontrol {
  const _$_Kontrol({required this.tanggal});

  factory _$_Kontrol.fromJson(Map<String, dynamic> json) =>
      _$$_KontrolFromJson(json);

  @override
  final int tanggal;

  @override
  String toString() {
    return 'Kontrol(tanggal: $tanggal)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Kontrol &&
            (identical(other.tanggal, tanggal) || other.tanggal == tanggal));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, tanggal);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_KontrolCopyWith<_$_Kontrol> get copyWith =>
      __$$_KontrolCopyWithImpl<_$_Kontrol>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_KontrolToJson(
      this,
    );
  }
}

abstract class _Kontrol implements Kontrol {
  const factory _Kontrol({required final int tanggal}) = _$_Kontrol;

  factory _Kontrol.fromJson(Map<String, dynamic> json) = _$_Kontrol.fromJson;

  @override
  int get tanggal;
  @override
  @JsonKey(ignore: true)
  _$$_KontrolCopyWith<_$_Kontrol> get copyWith =>
      throw _privateConstructorUsedError;
}
