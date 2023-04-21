import 'package:beeline_assistant/data/datasource/rate/rate_datasource.dart';
import 'package:beeline_assistant/domain/repositories/auth_repository.dart';
import 'package:beeline_assistant/core/error/failure.dart';
import 'package:dartz/dartz.dart';

class AuthRepositoryImpl implements AuthRepository {

  final RateDataSource remoteDataSource;

  const AuthRepositoryImpl({ required this.remoteDataSource });

  @override
  Future<Either<Failure, List<String>>> fetchAllRate() async => await remoteDataSource.fetchAllRate();

}
