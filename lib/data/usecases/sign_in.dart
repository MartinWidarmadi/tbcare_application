import 'package:tbcare_application/data/repositories/user_repository.dart';
import 'package:tbcare_application/data/tresult.dart';
import 'package:tbcare_application/data/usecases/use_cases.dart';

class SignIn implements UseCases<String, SignInParams> {
  final UserRepository _userRepository;

  SignIn(this._userRepository);

  @override
  Future<TResult<String>> call(SignInParams params) async {
    TResult<String> accData =
        await _userRepository.accountAuth(params.email, params.password);
    String? data;
    String? errorMessage;

    await accData.when(
        success: (value) => data = value,
        failed: (failed) => errorMessage = failed);

    if (data != null) {
      return TResult.success(data!);
    } else {
      return TResult.failed(errorMessage!);
    }
  }
}

class SignInParams {
  final String email;
  final String password;

  SignInParams({required this.email, required this.password});
}
