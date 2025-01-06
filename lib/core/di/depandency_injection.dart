import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:mkanak/core/networks/dio_factory.dart';
import 'package:mkanak/features/home/data/apis/home_api_services.dart';
import 'package:mkanak/features/home/data/repos/home_repo_impl.dart';
import 'package:mkanak/features/home/logic/home_cubit.dart';
import 'package:mkanak/features/login/data/apis/login_api_services.dart';
import 'package:mkanak/features/login/data/repos/login_repo.dart';
import 'package:mkanak/features/login/logic/cubit/login_cubit.dart';
import 'package:mkanak/features/registration/data/apis/registration_api_services.dart';
import 'package:mkanak/features/registration/data/repos/registration_repo.dart';
import 'package:mkanak/features/registration/logic/cubit/registration_cubit.dart';

GetIt getIt = GetIt.instance;
Future<void> setupGetit() async {
  // Dio
  Dio dio = DioFactory.getDio();
  // home
  getIt.registerFactory<HomeApiService>(() => HomeApiService(dio));
  getIt.registerLazySingleton<HomeRepoImpl>(() => HomeRepoImpl(getIt()));
  getIt.registerFactory<HomeCubit>(() => HomeCubit(getIt()));
  //regitration
  getIt.registerFactory<RegistrationApiServices>(
      () => RegistrationApiServices(dio));
  getIt
      .registerLazySingleton<RegistrationRepo>(() => RegistrationRepo(getIt()));
  getIt.registerFactory<RegistrationCubit>(() => RegistrationCubit(getIt()));
  // login
  getIt.registerFactory<LoginApiServices>(() => LoginApiServices(dio));
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));
}
