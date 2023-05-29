import 'package:tbcare_application/data/repositories/firebase_repository/firebase_pasien_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'firebase_pasien_repository_provider.g.dart';

@riverpod
FirebasePasienRepository firebasePasienRepository(
        FirebasePasienRepositoryRef ref) =>
    FirebasePasienRepository();
