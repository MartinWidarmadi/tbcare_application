import 'package:tbcare_application/data/tresult.dart';

abstract interface class UserRepository {
  Future<TResult<String>> accountAuth(String email, String password);
}
