import 'package:tbcare_application/data/model/models.dart';
import 'package:tbcare_application/data/repositories/pasien_repository.dart';
import 'package:tbcare_application/data/tresult.dart';
import 'package:tbcare_application/data/usecases/use_cases.dart';

class PasienRegister implements UseCases<Pasien, PasienRegisterParams> {
  final PasienRepository _pasienRepository;

  PasienRegister(this._pasienRepository);

  @override
  Future<TResult<Pasien>> call(PasienRegisterParams params) async {
    TResult<String> uidResult =
        await _pasienRepository.addPasienAccount(params.email, params.password);

    Pasien? dataPasien;
    String? errorMessage;

    await uidResult.when(success: (uid) async {
      TResult addData = await _pasienRepository.addPasienData(
          params.email, params.nama, params.nik, uid);

      addData.when(success: (data) {
        dataPasien = data;
      }, failed: (message) {
        errorMessage = message;
      });
    }, failed: (message) {
      errorMessage = message;
    });

    if (dataPasien != null) {
      return TResult.success(dataPasien!);
    } else {
      return TResult.failed(errorMessage!);
    }
  }
}

class PasienRegisterParams {
  final String email;
  final String password;
  final String nama;
  final String nik;

  PasienRegisterParams({
    required this.email,
    required this.password,
    required this.nama,
    required this.nik,
  });
}
