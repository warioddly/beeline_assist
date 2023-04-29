
import 'package:beeline_assistant/domain/repositories/auth_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';


class SignInWithCredentialUseCase {

  final AuthRepository repository;

  SignInWithCredentialUseCase({ required this.repository });

  Future<bool> call({ required AuthCredential credential, required Function(Object? error) onError }) async =>
      await repository.signInWithCredential(credential: credential, onError: onError);


}