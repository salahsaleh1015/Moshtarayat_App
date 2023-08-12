import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:moshtarayat_app/features/home/domain/entities/product_entity.dart';

import 'core/constants/constants.dart';
import 'features/home/domain/entities/banner_entity.dart';
import 'features/home/presentation/view/home_view.dart';

void main() async{
  await Hive.initFlutter();
  Hive.registerAdapter(BannerEntityAdapter());
  Hive.registerAdapter(ProductEntityAdapter());
  await Hive.openBox(kProductBox);
  await Hive.openBox(kBannerBox);
  runApp(const MyApp());


}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
    builder: (context , child) {
        return   const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: HomeView(),
        );
    }

    );
  }
}
class Screen extends StatelessWidget {
  const Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){},child: const Icon(Icons.access_time)),
      appBar: AppBar(
        title: const Text("salah saleh"),
      ),
    );
  }
}

