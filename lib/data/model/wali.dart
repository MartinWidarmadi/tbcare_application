import 'package:freezed_annotation/freezed_annotation.dart';

part 'wali.freezed.dart';
part 'wali.g.dart';

@freezed
class Wali with _$Wali {
  const factory Wali({
    required String id,
    required String nama,
    required String email,
    required String nik,
    required List<Map<String, dynamic>> pasien,
  }) = _Wali;

  factory Wali.fromJson(Map<String, dynamic> json) => _$WaliFromJson(json);
}
