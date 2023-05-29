import 'package:tbcare_application/data/tresult.dart';

abstract interface class UserRepository {
  Future<TResult<String>> accountAuth(String email, String password);
  Future<TResult<String>> addUserAccount(String email, String password);
  Future<TResult<dynamic>> addUserData(String email, String nama, String nik);
  Future<TResult<void>> logout();
}
