import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:moshtarayat_app/core/my_observer.dart';
import 'package:moshtarayat_app/core/services/api_services.dart';
import 'package:moshtarayat_app/features/home/data/data_source/home_local_data_source.dart';
import 'package:moshtarayat_app/features/home/data/data_source/home_remote_data_source.dart';
import 'package:moshtarayat_app/features/home/data/home_repo/home_repo.dart';
import 'package:moshtarayat_app/features/home/domain/entities/product_entity.dart';
import 'package:moshtarayat_app/features/home/domain/usecase/fetch_banners_list_usecase.dart';
import 'package:moshtarayat_app/features/home/presentation/maneger/banners_maneger/banners_cubit.dart';
import 'package:moshtarayat_app/features/home/presentation/maneger/products_maneger/products_cubit.dart';

import 'core/constants/constants.dart';
import 'core/services/locator_services.dart';
import 'features/home/domain/entities/banner_entity.dart';
import 'features/home/domain/usecase/fetch_products_list_usecase.dart';
import 'features/home/presentation/view/home_view.dart';

void main() async {

  await Hive.initFlutter();
  Hive.registerAdapter(BannerEntityAdapter());
  Hive.registerAdapter(ProductEntityAdapter());
  await Hive.openBox<ProductEntity>(kProductBox);
  await Hive.openBox<BannerEntity>(kBannerBox);
  setup();
   Bloc.observer = MyObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => BannersCubit(
            FetchBannersListUseCase(getIt.get<HomeRepoImpl>()),
          )..fetchBannersList(),
        ),
        BlocProvider(
            create: (context) => ProductsCubit(
                FetchProductsListUseCase(getIt.get<HomeRepoImpl>()))..fetchProductList())
      ],
      child: ScreenUtilInit(
          designSize: const Size(360, 690),
          minTextAdapt: true,
          splitScreenMode: true,
          builder: (context, child) {
            return const MaterialApp(
              debugShowCheckedModeBanner: false,
              home: HomeView(),
            );
          }),
    );
  }
}
