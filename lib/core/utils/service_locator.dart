import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:readly/core/utils/api_service.dart';
import 'package:readly/features/home/data/repos/home_repo_impl.dart';

final getIt = GetIt.instance;
void setupserviceLocator() {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  getIt.registerSingleton<HomeRepoImpl>(HomeRepoImpl(getIt.get<ApiService>()));
}
