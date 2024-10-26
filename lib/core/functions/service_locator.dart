
import 'package:dio/dio.dart';
import 'package:ecommerce_learn_it/core/services/api_services.dart';
import 'package:ecommerce_learn_it/features/home/presentation/data/home_repo_impl.dart';
import 'package:get_it/get_it.dart';



final getIt = GetIt.instance;

void setUp(){
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  getIt.registerSingleton<HomeRepoImpl>(
    HomeRepoImpl(
        getIt.get<ApiService>(),
    ),
  );
}