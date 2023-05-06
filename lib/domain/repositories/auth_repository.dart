import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthRepository {

  Future<bool> signInWithCredential({ required AuthCredential credential, required Function(Object? error) onError });

  Future<void> verifyPhone({
    required String phone, required Function(PhoneAuthCredential) verificationCompleted,
    required Function(FirebaseAuthException) verificationFailed, required Function(String, int?) codeSent,
    required Function(String) codeAutoRetrievalTimeout
  });

}
