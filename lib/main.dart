import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:moshtarayat_app/features/home/domain/entities/product_entity.dart';

import 'core/constants/constants.dart';
import 'features/home/domain/entities/banner_entity.dart';

void main() async{
  runApp(const MyApp());
  Hive.registerAdapter(BannerEntityAdapter());
  Hive.registerAdapter(ProductEntityAdapter());
 await Hive.openBox(kProductBox);
 await Hive.openBox(kBannerBox);
  
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Screen(),
    );
  }
}
class Screen extends StatelessWidget {
  const Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){},child: Icon(Icons.access_time)),
      appBar: AppBar(
        title: Text("salah saleh"),
      ),
    );
  }
}

