import 'package:dio/dio.dart';
import 'package:flutter_mvvm/features/home/data/data_sources/remote/my_dio_interceptor.dart';
import 'package:get_it/get_it.dart';
import '../../features/home/data/data_sources/remote/remote_data_source.dart';
import '../../features/home/data/repositories/api_repo_impl.dart';
import '../../features/home/domain/repositories/api_repository.dart';
import '../../features/home/domain/use_cases/api_usecase.dart';
import '../../features/home/presentation/blocs/home_bloc/home_bloc.dart';
import '../../features/home/data/data_sources/remote/api_client.dart';

final sl = GetIt.instance;

class ServiceLocator {
  static Future<void> init() async {
    final dio = Dio(BaseOptions(baseUrl: "https://jsonplaceholder.typicode.com"));
    dio.interceptors.add(DioInterceptor());
    sl.registerSingleton<Dio>(dio);
    sl.registerSingleton<ApiClient>(ApiClient(sl()));
    sl.registerLazySingleton<RemoteDataSource>(() => RemoteDataSource(sl()));
    sl.registerLazySingleton<ApiRepository>(() => ApiRepoImpl(sl()));
    sl.registerLazySingleton<ApiUseCase>(() => ApiUseCase(sl()));
    sl.registerFactory<HomeBloc>(() => HomeBloc(sl()));
  }
}
