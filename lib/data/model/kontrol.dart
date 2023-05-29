import 'package:freezed_annotation/freezed_annotation.dart';

part 'kontrol.freezed.dart';
part 'kontrol.g.dart';

@freezed
class Kontrol with _$Kontrol {
  const factory Kontrol({required int tanggal}) = _Kontrol;

  factory Kontrol.fromJson(Map<String, dynamic> json) =>
      _$KontrolFromJson(json);
}
