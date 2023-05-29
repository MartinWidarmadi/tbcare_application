import 'package:tbcare_application/data/model/models.dart';
import 'package:tbcare_application/data/repositories/user_repository.dart';
import 'package:tbcare_application/data/tresult.dart';
import 'package:tbcare_application/data/usecases/use_cases.dart';

class PasienRegister implements UseCases<Pasien, PasienRegisterParams> {
  final UserRepository _pasienRepository;

  PasienRegister(this._pasienRepository);

  @override
  Future<TResult<Pasien>> call(PasienRegisterParams params) async {
    TResult<String> accData =
        await _pasienRepository.addUserAccount(params.email, params.password);

    Pasien? dataPasien;
    String? errorMessage;
    accData.when(
        success: (data) async {
          TResult addData = await _pasienRepository.addUserData(
              params.email, params.nama, params.nik);

          addData.when(
              success: (data) => dataPasien = data,
              failed: (message) => errorMessage = message);
        },
        failed: (message) => errorMessage = message);

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

  PasienRegisterParams(
      {required this.email,
      required this.password,
      required this.nama,
      required this.nik});
}
