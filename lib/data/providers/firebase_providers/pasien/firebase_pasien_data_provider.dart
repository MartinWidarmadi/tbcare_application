import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tbcare_application/data/model/models.dart';

part 'firebase_pasien_data_provider.g.dart';

@riverpod
class FirebasePasienData extends _$FirebasePasienData {
  @override
  Pasien build() {
    return const Pasien(
        id: 'id', nama: 'nama', email: 'email', wali: [], nik: 'nik');
  }

  void pasienState(pasien) {
    state = pasien;
  }
}
