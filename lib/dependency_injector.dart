import 'package:get_it/get_it.dart';
import 'package:beeline_assistant/data/repositories/example_repository_impl.dart';
import 'package:beeline_assistant/domain/repositories/example_repository.dart';
import 'package:beeline_assistant/domain/usecases/example/example_usecase.dart';
import 'package:beeline_assistant/presentation/cubit/example/example_cubit.dart';


// final dio = Dio();
final GetIt sl = GetIt.instance;

Future<void> init () async {

  /// Cubit
  sl.registerFactory<ExampleCubit>(() => ExampleCubit());


  /// Use Cases
  sl.registerLazySingleton<ExampleUseCase>(() => ExampleUseCase(repository: sl.call()));


  /// Repositories
  sl.registerLazySingleton<ExampleRepository>(() => ExampleRepositoryImpl(remoteDataSource: sl.call()));


  /// Remote Data
  // sl.registerLazySingleton<ExampleDataSource>(() => ExampleDataSourceImpl(db: dio));

  // sl.registerLazySingleton(() => dio);

}
