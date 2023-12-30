import 'package:bookly/core/Utils/Api_Service.dart';
import 'package:bookly/features/HomeView/Data/repos/Home_Rep_Imple.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setup() {
  //dependency injection
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  getIt.registerSingleton<HomeRepoImpl>(HomeRepoImpl(getIt.get<ApiService>()));
}
