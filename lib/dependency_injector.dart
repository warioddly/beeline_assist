import 'package:beeline_assistant/data/datasource/auth/auth_datasource.dart';
import 'package:beeline_assistant/data/datasource/auth/auth_datasource_impl.dart';
import 'package:beeline_assistant/data/datasource/rate/rate_datasource.dart';
import 'package:beeline_assistant/data/datasource/rate/rate_datasource_impl.dart';
import 'package:beeline_assistant/data/repositories/auth_repository_impl.dart';
import 'package:beeline_assistant/data/repositories/rate_repository_impl.dart';
import 'package:beeline_assistant/domain/repositories/auth_repository.dart';
import 'package:beeline_assistant/domain/repositories/rate_repository.dart';
import 'package:beeline_assistant/domain/usecases/auth/sign_in_with_credential_usecase.dart';
import 'package:beeline_assistant/domain/usecases/auth/verify_phone_usecase.dart';
import 'package:beeline_assistant/presentation/cubit/auth/auth_cubit.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';

final FirebaseFirestore db = FirebaseFirestore.instance;
final FirebaseAuth auth = FirebaseAuth.instance;
final GetIt sl = GetIt.instance;

Future<void> init() async {

  initAuth();

  initRate();

}


void initAuth() {

  /// Cubit
  sl.registerFactory<AuthCubit>(() => AuthCubit(
    verifyPhoneUseCase: sl.call(),
    signInWithCredentialUseCase: sl.call(),
  ));

  /// Use Cases
  sl.registerLazySingleton<VerifyPhoneUseCase>(() => VerifyPhoneUseCase(repository: sl.call()));
  sl.registerLazySingleton<SignInWithCredentialUseCase>(() => SignInWithCredentialUseCase(repository: sl.call()));

  /// Repositories
  sl.registerLazySingleton<AuthRepository>(() => AuthRepositoryImpl(remoteDataSource: sl.call()));

  /// Remote Data
  sl.registerLazySingleton<AuthDataSource>(() => AuthDataSourceImpl(db: db, auth: auth));

}


void initRate() {

  /// Cubit
  // sl.registerFactory<ExampleCubit>(() => ExampleCubit());

  /// Use Cases
  // sl.registerLazySingleton<ExampleUseCase>(() => ExampleUseCase(repository: sl.call()));

  /// Repositories
  sl.registerLazySingleton<RateRepository>(() => RateRepositoryImpl(remoteDataSource: sl.call()));

  /// Remote Data
  sl.registerLazySingleton<RateDataSource>(() => RateDataSourceImpl(db: db));

}