import 'package:tbcare_application/data/model/models.dart';
import 'package:tbcare_application/data/repositories/pasien_repository.dart';
import 'package:tbcare_application/data/tresult.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FirebasePasienRepository implements PasienRepository {
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  final FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;

  @override
  Future<TResult<Pasien>> getPasienData(String id) async {
    Pasien pasien;
    try {
      var json = (await firebaseFirestore.doc('pasien/$id').get()).data();

      if (json != null) {
        pasien = Pasien.fromJson(json);
        return TResult.success(pasien);
      } else {
        return const TResult.failed("User tidak ditemukan");
      }
    } catch (e) {
      return TResult.failed(e.toString());
    }
  }

  @override
  Future<TResult<String>> addPasienAccount(
      String email, String password) async {
    try {
      final account = await firebaseAuth.createUserWithEmailAndPassword(
          email: email, password: password);
      var uid = account.user!.uid;
      return TResult.success(uid);
    } on FirebaseAuthException catch (e) {
      var errorMessage = '';
      if (e.code == 'weak-password') {
        errorMessage = 'Password terlalu lemah.';
      } else if (e.code == 'email-already-in-use') {
        errorMessage = 'Sudah ada akun yang menggunakan email ini.';
      }
      return TResult.failed(errorMessage);
    } catch (e) {
      return TResult.failed(e.toString());
    }
  }

  @override
  Future<TResult<String>> accountAuth(String email, String password) async {
    try {
      final accLogin = await firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
      final uid = accLogin.user!.uid;
      return TResult.success(uid);
    } on FirebaseAuthException catch (e) {
      var errorMessage = '';
      if (e.code == 'user-not-found') {
        errorMessage = 'Tidak jemaat yang menggunakan akun ini.';
      } else if (e.code == 'wrong-password') {
        errorMessage = 'Password salah.';
      }
      return TResult.failed(errorMessage);
    } catch (e) {
      return TResult.failed(e.toString());
    }
  }

  @override
  Future<TResult<Pasien>> addPasienData(
      String email, String nama, String nik, String id) async {
    try {
      final Pasien newPasienData =
          Pasien(nik: nik, email: email, id: id, nama: nama, wali: [
        {'id': ''}
      ]);
      await firebaseFirestore
          .collection('pasien')
          .doc(id)
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
