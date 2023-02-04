
import 'package:beeline_assistant/domain/repositories/example_repository.dart';
import 'package:beeline_assistant/services/error/failure.dart';
import 'package:dartz/dartz.dart';

class ExampleUseCase {

  final ExampleRepository repository;

  ExampleUseCase({ required this.repository });

  Future<Either<Failure, List<String>>> call() async => await repository.getData();

}
