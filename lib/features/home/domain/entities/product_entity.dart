import 'package:hive_flutter/hive_flutter.dart';
part 'product_entity.g.dart';

@HiveType(typeId: 0)

// ال entity class
// عباره عن data representation
//يعني بنشوف احنا عايزين نعرض ايه في ال UI و نستقبله هنا
// الخطه الي بعدها ال repo 

class ProductEntity {
  @HiveField(0)
  final int productId;
  @HiveField(1)
  final bool inCart;
  @HiveField(2)
  final bool inFav;
  @HiveField(3)
  final String productImage;
  @HiveField(4)
  final String productDescription;
  @HiveField(5)
  final String productName;
  @HiveField(6)
  final num productPrice;
  @HiveField(7)
  final num productOldPrice;
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
