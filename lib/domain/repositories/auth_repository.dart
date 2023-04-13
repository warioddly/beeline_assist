import 'package:beeline_assistant/services/error/failure.dart';
import 'package:dartz/dartz.dart';

abstract class AuthRepository {

  Future<Either<Failure, List<String>>> fetchAllRate();

}
