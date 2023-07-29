import 'package:moshtarayat_app/features/home/domain/entities/banner_entity.dart';

class BannerModel extends BannerEntity {
  final int id;
  final String image;
  final dynamic category;
  final dynamic product;

  BannerModel(
      {required this.id, required this.image, this.category, this.product})
      : super(bannerId: id, bannerImage: image);

  factory BannerModel.fromJson(Map<String, dynamic> json) {
    return BannerModel(
      id: json['id'],
      image: json['image'],
      category: json['category'],
      product: json['product'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'image': image,
      'category': category,
      'product': product,
    };
  }
}
