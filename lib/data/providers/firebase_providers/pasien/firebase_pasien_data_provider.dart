import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tbcare_application/data/model/models.dart';

part 'firebase_pasien_data_provider.g.dart';

@riverpod
class FirebasePasienData extends _$FirebasePasienData {
  @override
  Future<Pasien> build(Pasien pasien) async {
    return pasien;
  }
}
