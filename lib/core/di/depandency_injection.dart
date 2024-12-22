import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:mkanak/core/networks/dio_factory.dart';
import 'package:mkanak/features/home/data/apis/home_api_services.dart';
import 'package:mkanak/features/home/data/repos/home_repo_impl.dart';
import 'package:mkanak/features/home/logic/home_cubit.dart';

GetIt getIt = GetIt.instance;
Future<void> setupGetit() async {
  // Dio
  Dio dio = DioFactory.getDio();
  // home
  getIt.registerFactory<HomeApiService>(() => HomeApiService(dio));
  getIt.registerFactory<HomeRepoImpl>(() => HomeRepoImpl(getIt()));
  getIt.registerFactory<HomeCubit>(() => HomeCubit(getIt()));
}
