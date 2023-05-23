import 'package:tbcare_application/data/repositories/user_repository.dart';
import 'package:tbcare_application/data/tresult.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirebaseUserRepository implements UserRepository {
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  @override
  Future<TResult<String>> accountAuth(String email, String password) async {
    try {
      final accLogin = await firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
      return TResult.success(accLogin.user!.uid);
    } on FirebaseAuthException catch (e) {
      return TResult.failed(e.message!);
    } catch (e) {
      return TResult.failed(e.toString());
    }
  }
}
