import 'package:tbcare_application/data/model/models.dart';
import 'package:tbcare_application/data/tresult.dart';

abstract interface class WaliRepository {
  Future<TResult<String>> accountAuth(String email, String password);
  Future<TResult<String>> addWaliAccount(String email, String password);
  Future<TResult<Wali>> addWaliData(String email, String nama, String nik);
  Future<TResult<void>> logout();
  Future<TResult<Wali>> getWaliData(String id);
}
