import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tbcare_application/data/model/models.dart';
import 'package:tbcare_application/data/repositories/firebase_repository/firebase_kontrol_repository.dart';
import 'package:tbcare_application/data/tresult.dart';

part 'firebase_all_kontrol_data_provider.g.dart';

@riverpod
class FirebaseAllKontrolData extends _$FirebaseAllKontrolData {
  @override
  Future<TResult<List<Kontrol>>> build() async {
    var getAllKontrol = await FirebaseKontrolRepository().getAllKontrolData();

    List<Kontrol>? kontrolList;
    String? errorMessage;

    getAllKontrol.when(success: (data) {
      kontrolList = data;
    }, failed: (message) {
      errorMessage = message;
    });

    if (kontrolList != null) {
      return TResult.success(kontrolList!);
    } else {
      return TResult.failed(errorMessage!);
    }
  }
}
