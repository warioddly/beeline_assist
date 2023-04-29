
import 'package:beeline_assistant/domain/repositories/auth_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';

class VerifyPhoneUseCase {

  final AuthRepository repository;

  VerifyPhoneUseCase({ required this.repository });

  Future<void> call({
    required String phone,
    required Function(PhoneAuthCredential) verificationCompleted,
    required Function(FirebaseAuthException) verificationFailed,
    required Function(String, int?) codeSent,
    required Function(String) codeAutoRetrievalTimeout,
  }) async => await repository.verifyPhone(
      phone: phone,
      verificationCompleted: verificationCompleted,
      verificationFailed: verificationFailed,
      codeSent: codeSent,
      codeAutoRetrievalTimeout: codeAutoRetrievalTimeout
  );

}