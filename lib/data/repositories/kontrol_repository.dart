import 'package:tbcare_application/data/model/models.dart';
import 'package:tbcare_application/data/tresult.dart';

abstract interface class KontrolRepository {
  Future<TResult<Kontrol>> addKontrolData(int tanggal);
  Future<TResult<List<Kontrol>>> getAllKontrolData();
}
