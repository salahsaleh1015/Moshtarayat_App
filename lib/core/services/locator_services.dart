import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../features/home/data/data_source/home_local_data_source.dart';
import '../../features/home/data/data_source/home_remote_data_source.dart';
import '../../features/home/data/home_repo/home_repo.dart';
import 'api_services.dart';

final getIt = GetIt.instance;
void setup() {
  getIt.registerSingleton(
    HomeRemoteDataSourceImpl(
      apiService: ApiService(Dio()),
    ),
  );

  getIt.registerSingleton<HomeRepoImpl>(HomeRepoImpl(
      homeLocalDataSourceImp: HomeLocalDataSourceImp(),
      homeRemoteDataSourceImpl: getIt.get<HomeRemoteDataSourceImpl>()));
}
