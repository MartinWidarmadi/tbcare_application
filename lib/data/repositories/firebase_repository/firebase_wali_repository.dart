import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:tbcare_application/data/model/models.dart';
import 'package:tbcare_application/data/repositories/user_repository.dart';
import 'package:tbcare_application/data/tresult.dart';

class FirebaseWaliRepository implements UserRepository {
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  final FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;

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

  @override
  Future<TResult<String>> addUserAccount(String email, String password) async {
    try {
      UserCredential account = await firebaseAuth
          .createUserWithEmailAndPassword(email: email, password: password);
      return TResult.success(account.user!.uid);
    } on FirebaseAuthException catch (e) {
      return TResult.failed(e.message!);
    } catch (e) {
      return TResult.failed(e.toString());
    }
  }

  @override
  Future<TResult<Wali>> addUserData(
      String email, String nama, String nik) async {
    String newId = firebaseFirestore.collection('wali').doc().id;
    try {
      final Wali newWaliData = Wali(
          email: email,
          id: newId,
          nama: nama,
          pasien: [
            {'id': ''}
          ],
          nik: nik);
      await firebaseFirestore
          .collection('pasien')
          .doc(newId)
          .set(newWaliData.toJson());
      return TResult.success(newWaliData);
    } catch (e) {
      return TResult.failed(e.toString());
    }
  }

  @override
  Future<TResult<void>> logout() async {
    try {
      final logout = await firebaseAuth.signOut();
      return TResult.success(logout);
    } catch (e) {
      return TResult.failed(e.toString());
    }
  }
}
