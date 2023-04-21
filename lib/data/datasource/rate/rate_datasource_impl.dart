import 'package:beeline_assistant/data/datasource/rate/rate_datasource.dart';
import 'package:beeline_assistant/core/error/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class RateDataSourceImpl implements RateDataSource {

  final FirebaseFirestore db;

  const RateDataSourceImpl({ required this.db });

  @override
  Future<Either<Failure, List<String>>> fetchAllRate() async {
    // TODO: implement getData
    throw UnimplementedError();
  }
}
