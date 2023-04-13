import 'package:beeline_assistant/data/datasource/rate/rate_datasource.dart';
import 'package:beeline_assistant/domain/repositories/rate_repository.dart';
import 'package:beeline_assistant/services/error/failure.dart';
import 'package:dartz/dartz.dart';

class RateRepositoryImpl implements RateRepository {

  final RateDataSource remoteDataSource;

  const RateRepositoryImpl({ required this.remoteDataSource });

  @override
  Future<Either<Failure, List<String>>> fetchAllRate() async => await remoteDataSource.fetchAllRate();

}
