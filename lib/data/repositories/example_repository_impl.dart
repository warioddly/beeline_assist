import 'package:beeline_assistant/data/datasource/example/example_datasource.dart';
import 'package:beeline_assistant/domain/repositories/example_repository.dart';
import 'package:beeline_assistant/services/error/failure.dart';
import 'package:dartz/dartz.dart';

class ExampleRepositoryImpl implements ExampleRepository {
  final ExampleDataSource remoteDataSource;

  ExampleRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<Failure, List<String>>> getData() async => await remoteDataSource.getData();
}
