// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'pasien.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Pasien _$$_PasienFromJson(Map<String, dynamic> json) => _$_Pasien(
      id: json['id'] as String,
      nama: json['nama'] as String,
      email: json['email'] as String,
      wali: (json['wali'] as List<dynamic>)
          .map((e) => e as Map<String, dynamic>)
          .toList(),
      nik: json['nik'] as String,
    );

Map<String, dynamic> _$$_PasienToJson(_$_Pasien instance) => <String, dynamic>{
      'id': instance.id,
      'nama': instance.nama,
      'email': instance.email,
      'wali': instance.wali,
      'nik': instance.nik,
    };
