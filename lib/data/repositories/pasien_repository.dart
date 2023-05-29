import 'package:tbcare_application/data/model/models.dart';
import 'package:tbcare_application/data/tresult.dart';

abstract interface class PasienRepository {
  Future<TResult<String>> addPasienAccount(String email, String password);
  Future<TResult<Pasien>> getPasienData(String id);
  Future<TResult<Pasien>> addPasienData(
      String id, String email, String nama, String nik);
  Future<TResult<String>> accountAuth(String email, String password);
  Future<TResult<void>> logout();
}
