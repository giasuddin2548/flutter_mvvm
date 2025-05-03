import 'package:dio/dio.dart';
import 'package:flutter_mvvm/core/my_dio_interceptor.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter_mvvm/core/api_client.dart';
import 'package:flutter_mvvm/data/data_sources/remote/remote_data_source.dart';
import 'package:flutter_mvvm/data/repositories/api_repo_impl.dart';
import 'package:flutter_mvvm/domain/repositories/api_repository.dart';
import 'package:flutter_mvvm/domain/use_cases/api_usecase.dart';
import 'package:flutter_mvvm/presentation/blocs/home_bloc/home_bloc.dart';

final sl = GetIt.instance;

class ServiceLocator {
  static Future<void> init() async {
    /// Core
    final dio = Dio(BaseOptions(baseUrl: "https://jsonplaceholder.typicode.com"));
    dio.interceptors.add(DioInterceptor());

    sl.registerSingleton<Dio>(dio);
    sl.registerSingleton<ApiClient>(ApiClient(sl()));

    /// Data Sources
    sl.registerLazySingleton<RemoteDataSource>(() => RemoteDataSource(sl()));

    /// Repository (abstract => implementation)
    sl.registerLazySingleton<ApiRepository>(() => ApiRepoImpl(sl()));

    /// Use Cases
    sl.registerLazySingleton<ApiUseCase>(() => ApiUseCase(sl()));

    /// Bloc
    sl.registerFactory<HomeBloc>(() => HomeBloc(sl()));
  }
}
