import 'package:beeline_assistant/data/datasource/auth/auth_datasource.dart';
import 'package:beeline_assistant/core/error/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthDataSourceImpl implements AuthDataSource {

  final FirebaseFirestore db;
  final FirebaseAuth auth;

  const AuthDataSourceImpl({ required this.db, required this.auth });

  @override
  Future<void> verifyPhone({
    required String phone,
    required Function(PhoneAuthCredential) verificationCompleted,
    required Function(FirebaseAuthException) verificationFailed,
    required Function(String, int?) codeSent,
    required Function(String) codeAutoRetrievalTimeout
  }) async {
    await auth.verifyPhoneNumber(
      phoneNumber: phone,
      verificationCompleted: verificationCompleted,
      verificationFailed: verificationFailed,
      codeSent: codeSent,
      codeAutoRetrievalTimeout: codeAutoRetrievalTimeout,
    );
  }


  @override
  Future<bool> signInWithCredential({ required AuthCredential credential, required Function(Object? error) onError }) async {

    try {

      await auth.signInWithCredential(credential);

      return true;
    }
    catch (error) {
      onError(error);
      return false;
    }

  }



}
