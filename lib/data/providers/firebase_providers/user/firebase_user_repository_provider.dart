import 'package:tbcare_application/data/repositories/firebase_repository/firebase_user_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'firebase_user_repository_provider.g.dart';

@riverpod
FirebaseUserRepository firebaseUserRepository(FirebaseUserRepositoryRef ref) =>
    FirebaseUserRepository();
