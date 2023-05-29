// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'wali.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Wali _$$_WaliFromJson(Map<String, dynamic> json) => _$_Wali(
      id: json['id'] as String,
      nama: json['nama'] as String,
      email: json['email'] as String,
      nik: json['nik'] as String,
      pasien: (json['pasien'] as List<dynamic>)
          .map((e) => e as Map<String, dynamic>)
          .toList(),
    );

Map<String, dynamic> _$$_WaliToJson(_$_Wali instance) => <String, dynamic>{
      'id': instance.id,
      'nama': instance.nama,
      'email': instance.email,
      'nik': instance.nik,
      'pasien': instance.pasien,
    };
