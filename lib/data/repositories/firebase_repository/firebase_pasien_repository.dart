import 'package:tbcare_application/data/model/models.dart';
import 'package:tbcare_application/data/repositories/user_repository.dart';
import 'package:tbcare_application/data/tresult.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FirebasePasienRepository implements UserRepository {
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
  Future<TResult<Pasien>> addUserData(
      String email, String nama, String nik) async {
    String newId = firebaseFirestore.collection('pasien').doc().id;
    try {
      final Pasien newPasienData =
          Pasien(nik: nik, email: email, id: newId, nama: nama, wali: [
        {'id': ''}
      ]);
      await firebaseFirestore
          .collection('pasien')
          .doc(newId)
          .set(newPasienData.toJson());
      return TResult.success(newPasienData);
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
