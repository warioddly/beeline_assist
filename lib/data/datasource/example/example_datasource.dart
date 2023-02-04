
import 'package:dartz/dartz.dart';
import 'package:beeline_assistant/services/error/failure.dart';

abstract class ExampleDataSource {

  Future<Either<Failure, List<String>>> getData();

}