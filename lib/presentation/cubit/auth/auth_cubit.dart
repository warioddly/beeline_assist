import 'dart:async';
import 'package:beeline_assistant/domain/usecases/auth/sign_in_with_credential_usecase.dart';
import 'package:beeline_assistant/domain/usecases/auth/verify_phone_usecase.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {

  final VerifyPhoneUseCase verifyPhoneUseCase;
  final SignInWithCredentialUseCase signInWithCredentialUseCase;

  AuthCubit({
    required this.verifyPhoneUseCase,
    required this.signInWithCredentialUseCase,
  }) : super(AuthInitial());



  FutureOr<void> onSendOtp({ required String phone }) async {
    emit(AuthLoading());

    try {

      await verifyPhoneUseCase.call(
        phone: phone,
        verificationCompleted: (PhoneAuthCredential credential) async { emit(AuthVerificationComplete(credential: credential)); },
        codeSent: (String verificationId, int? resendToken) { emit(AuthOtpSent(verificationId: verificationId, token: resendToken)); },
        verificationFailed: (FirebaseAuthException error) { emit(AuthError(error: error.code)); },
        codeAutoRetrievalTimeout: (String verificationId) { },
      );

    }
    catch (error) { emit(AuthError(error: error)); }

  }


  FutureOr<void> onResendOtp({ required String phone }) async {
    emit(AuthLoading());

    try {

      await verifyPhoneUseCase.call(
        phone: phone,
        verificationCompleted: (PhoneAuthCredential credential) async {
          emit(AuthVerificationComplete(credential: credential));
        },
        codeSent: (String verificationId, int? resendToken) {
          emit(AuthOtpSent(verificationId: verificationId, token: resendToken));
        },
        verificationFailed: (FirebaseAuthException error) {
          emit(AuthError(error: error.code));
        },
        codeAutoRetrievalTimeout: (String verificationId) { },
      );

    }
    catch (error) { emit(AuthError(error: error)); }
  }


  FutureOr<void> onVerifyOtp(String verificationId, String code) async {

    try {

      emit(AuthVerificationLoading());

      PhoneAuthCredential credential = await PhoneAuthProvider.credential(
        verificationId: verificationId,
        smsCode: code,
      );

      emit(AuthVerificationComplete(credential: credential));

    } catch (error) { emit(AuthVerificationError(error: error)); }

  }


  FutureOr<void> loginWithCredential(AuthCredential credential) async {

    try {

      bool signIn = await signInWithCredentialUseCase.call(
          credential: credential,
          onError: (Object? error) { emit(AuthVerificationError(error: error.toString())); }
      );

      if (signIn) emit(const AuthUserVerified());

    }
    catch (error) { emit(AuthVerificationError(error: error)); }

  }

  
}