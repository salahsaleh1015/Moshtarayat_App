import '../../domain/entities/product_entity.dart';

// هنا بنستقبل ال data الي راجعه من ال model
// و بشوف انا هعرض منها ايه و بتطبيق مبدأ الوراثه باخد اللي انا عايزه من ال super constructor

class ProductModel extends ProductEntity {
  int id;
  num price;
  num oldPrice;
  num discount;
  String image;
  String name;
  String description;
 List<dynamic> images;
  bool inFavorites;
  bool inCart;

  ProductModel({
    required this.id,
    required this.price,
    required this.oldPrice,
    required this.discount,
    required this.image,
    required this.name,
    required this.description,
    required this.images,
    required this.inFavorites,
    required this.inCart,
  }) : super(
            productImage: image,
            productName: name,
            productPrice: price,
            productId: id,
            productDescription: description,
            productOldPrice: oldPrice,
            inCart: inCart,
            inFav: inFavorites);

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json['id'],
      price: json['price'],
      oldPrice: json['old_price'],
      discount: json['discount'],
      image: json['image'],
      name: json['name'],
      description: json['description'],
      images:json['images'],
      inFavorites: json['in_favorites'],
      inCart: json['in_cart'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'price': price,
      'old_price': oldPrice,
      'discount': discount,
      'image': image,
      'name': name,
      'description': description,
      'images': images,
      'in_favorites': inFavorites,
      'in_cart': inCart,
    };
  }
}
