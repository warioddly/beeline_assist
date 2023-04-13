import 'package:beeline_assistant/data/datasource/auth/rate_datasource.dart';
import 'package:beeline_assistant/data/datasource/rate/rate_datasource.dart';
import 'package:beeline_assistant/services/error/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AuthDataSourceImpl implements AuthDataSource {

  final FirebaseFirestore db;

  const AuthDataSourceImpl({ required this.db });

  @override
  Future<Either<Failure, List<String>>> fetchAllRate() async {
    // TODO: implement getData
    throw UnimplementedError();
  }
}
