import 'package:tbcare_application/data/model/models.dart';
import 'package:tbcare_application/data/repositories/pasien_repository.dart';
import 'package:tbcare_application/data/tresult.dart';
import 'package:tbcare_application/data/usecases/use_cases.dart';

class PasienLogin implements UseCases<Pasien, PasienLoginParams> {
  final PasienRepository _pasienRepository;

  PasienLogin(this._pasienRepository);

  @override
  Future<TResult<Pasien>> call(PasienLoginParams params) async {
    TResult<String> uidResult =
        await _pasienRepository.accountAuth(params.email, params.password);

    Pasien? pasien;
    String? errorMessage;

    await uidResult.when(success: (uid) async {
      TResult<Pasien> dataPasienResult =
          await _pasienRepository.getPasienData(uid);

      dataPasienResult.when(success: (data) {
        pasien = data;
      }, failed: (message) {
        errorMessage = message;
      });
    }, failed: (message) {
      errorMessage = message;
    });

    if (pasien != null) {
      return TResult.success(pasien!);
    } else {
      return TResult.failed(errorMessage!);
    }
  }
}

class PasienLoginParams {
  final String email;
  final String password;

  PasienLoginParams({required this.email, required this.password});
}
