import 'package:freezed_annotation/freezed_annotation.dart';

part 'pasien.freezed.dart';
part 'pasien.g.dart';

@freezed
class Pasien with _$Pasien {
  const factory Pasien({
    required String id,
    required String nama,
    required String email,
    required List<Map<String, dynamic>> wali,
    required String nik,
  }) = _Pasien;

  factory Pasien.fromJson(Map<String, dynamic> json) => _$PasienFromJson(json);
}
