import 'package:beeline_assistant/core/error/failure.dart';
import 'package:dartz/dartz.dart';

abstract class ExampleRepository {
  Future<Either<Failure, List<String>>> getData();
}
