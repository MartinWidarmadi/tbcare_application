import 'package:tbcare_application/data/tresult.dart';

abstract class UseCases<T, P> {
  Future<TResult<T>> call(P params);
}

class NoUseCaseParams {
  static const NoUseCaseParams _instance = NoUseCaseParams._();

  const NoUseCaseParams._();

  factory NoUseCaseParams() => _instance;
}
