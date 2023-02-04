import 'package:dartz/dartz.dart';
import 'package:beeline_assistant/data/datasource/example/example_datasource.dart';
import 'package:beeline_assistant/services/error/failure.dart';

class ExampleDataSourceImpl implements ExampleDataSource {


  // ExampleDataSourceImpl({ required this.db });
  ExampleDataSourceImpl();

  @override
  Future<Either<Failure, List<String>>> getData() async {
    // TODO: implement getData
    throw UnimplementedError();
  }



}