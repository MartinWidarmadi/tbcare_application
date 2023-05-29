import 'package:tbcare_application/data/model/kontrol.dart';
import 'package:tbcare_application/data/repositories/kontrol_repository.dart';
import 'package:tbcare_application/data/tresult.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseKontrolRepository implements KontrolRepository {
  FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;

  @override
  Future<TResult<Kontrol>> addKontrolData(int tanggal) async {
    try {
      var newKontrol = Kontrol(tanggal: tanggal);

      await firebaseFirestore
          .collection('kontrol/2023/data')
          .add(newKontrol.toJson());
      return TResult.success(newKontrol);
    } catch (e) {
      return TResult.failed(e.toString());
    }
  }

  @override
  Future<TResult<List<Kontrol>>> getAllKontrolData() async {
    try {
      var getAllKontrol =
          await firebaseFirestore.collection('kontrol/2023/data').get();
      var listKontrol = getAllKontrol.docs
          .map((doc) => Kontrol.fromJson(doc.data()))
          .toList();
      return TResult.success(listKontrol);
    } catch (e) {
      return TResult.failed(e.toString());
    }
  }
}
