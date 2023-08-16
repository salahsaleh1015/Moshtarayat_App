import 'package:hive/hive.dart';

import '../../features/home/domain/entities/product_entity.dart';

void saveProducts(List<ProductEntity>products ,String boxName){

 var box = Hive.box<ProductEntity>(boxName);
 box.addAll(products);
}