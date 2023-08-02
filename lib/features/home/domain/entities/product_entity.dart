

import 'package:hive_flutter/hive_flutter.dart';
part 'product_entity.g.dart';
@HiveType(typeId: 0)
class ProductEntity {
  @HiveField(0)
  final int productId;
  @HiveField(1)
  final bool  inCart;
  @HiveField(2)
  final bool inFav;
  @HiveField(3)
  final String productImage;
  @HiveField(4)
  final String  productDescription;
  @HiveField(5)
  final String  productName;
  @HiveField(6)
  final num productPrice;
  @HiveField(7)
  final num   productOldPrice;
  ProductEntity(
      {required this.productImage,
      required this.productName,
      required this.productPrice,
      required this.productId,
      required this.productDescription,
      required this.productOldPrice,
      required this.inCart,
      required this.inFav});
}
