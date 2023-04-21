import 'package:beeline_assistant/core/error/failure.dart';
import 'package:dartz/dartz.dart';

abstract class RateDataSource {
  Future<Either<Failure, List<String>>> fetchAllRate();
}
