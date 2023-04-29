part of 'auth_cubit.dart';

abstract class AuthState extends Equatable {
  const AuthState();
}

class AuthInitial extends AuthState {
  @override
  List<Object> get props => [];
}


class AuthLoading extends AuthState {

  @override
  List<Object> get props => [];
}


class AuthLoaded extends AuthState {

  @override
  List<Object> get props => [];
}


class AuthError extends AuthState {
  final Object error;

  const AuthError({ required this.error });

  @override
  List<Object> get props => [];
}


class AuthUserVerified extends AuthState {

  const AuthUserVerified();

  @override
  List<Object> get props => [];
}


class AuthCodeSentSuccess extends AuthState {
  final String verificationId;

  const AuthCodeSentSuccess({ required this.verificationId, });

  @override
  List<Object> get props => [verificationId];
}


class AuthSendOtpToPhone extends AuthState {
  final String phone;

  const AuthSendOtpToPhone({ required this.phone});

  @override
  List<Object> get props => [phone];
}


class AuthVerifySentOtp extends AuthState {
  final String otpCode;
  final String verificationId;

  const AuthVerifySentOtp( {required this.otpCode, required this.verificationId});

  @override
  List<Object> get props => [otpCode, verificationId];
}


class AuthOtpSent extends AuthState {
  final String verificationId;
  final int? token;

  const AuthOtpSent({ required this.verificationId, required this.token });

  @override
  List<Object> get props => [verificationId, token!];
}


class AuthValidate extends AuthState {
  final String error;
  final bool validated;

  const AuthValidate({ required this.error, required this.validated});

  @override
  List<Object> get props => [error, validated];
}


class AuthVerificationComplete extends AuthState {
  final AuthCredential credential;

  const AuthVerificationComplete({ required this.credential });

  @override
  List<Object> get props => [credential];
}


class AuthVerificationLoading extends AuthState {

  @override
  List<Object> get props => [];
}


class AuthVerificationLoaded extends AuthState {

  @override
  List<Object> get props => [];
}


class AuthVerificationError extends AuthState {
  final Object error;

  const AuthVerificationError({ required this.error });

  @override
  List<Object> get props => [];
}
