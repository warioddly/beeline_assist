import 'package:beeline_assistant/data/datasource/auth/auth_datasource.dart';
import 'package:beeline_assistant/domain/repositories/auth_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';


class AuthRepositoryImpl implements AuthRepository {

  final AuthDataSource remoteDataSource;

  const AuthRepositoryImpl({ required this.remoteDataSource });


  @override
  Future<bool> signInWithCredential({required AuthCredential credential, required Function(Object? error) onError}) async => await remoteDataSource.signInWithCredential(credential: credential, onError: onError);


  @override
  Future<void> verifyPhone({
    required String phone,
    required Function(PhoneAuthCredential p1) verificationCompleted,
    required Function(FirebaseAuthException p1) verificationFailed,
    required Function(String p1, int? p2) codeSent, required Function(String p1) codeAutoRetrievalTimeout
  }) async => await remoteDataSource.verifyPhone(phone: phone, verificationCompleted: verificationCompleted,
      verificationFailed: verificationFailed, codeSent: codeSent, codeAutoRetrievalTimeout: codeAutoRetrievalTimeout
  );


}
