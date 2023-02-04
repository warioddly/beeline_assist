
import 'package:dartz/dartz.dart';
import 'package:beeline_assistant/services/error/failure.dart';

abstract class ExampleRepository {

  Future<Either<Failure, List<String>>> getData();


}