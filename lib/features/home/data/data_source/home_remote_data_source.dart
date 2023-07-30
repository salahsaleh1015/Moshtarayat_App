import 'package:moshtarayat_app/core/services/api_services.dart';
import 'package:moshtarayat_app/features/home/data/models/banner_model.dart';
import 'package:moshtarayat_app/features/home/data/models/product_model.dart';
import 'package:moshtarayat_app/features/home/domain/entities/banner_entity.dart';

import '../../domain/entities/product_entity.dart';

abstract class HomeRemoteDataSource {
  Future<List<BannerEntity>> fetchBannersList();
  Future<List<ProductEntity>> fetchProductsList();
}

class HomeRemoteDataSourceImpl extends HomeRemoteDataSource {
  final ApiService apiService;

  HomeRemoteDataSourceImpl(this.apiService);

  @override
  Future<List<ProductEntity>> fetchProductsList() async {
    var data = await apiService.get(endPoint: 'products');
    List<ProductEntity> products = getProductList(data);
    return products;
  }

  List<ProductEntity> getProductList(Map<String, dynamic> data) {
    List<ProductEntity> products = [];
    for (var productMap in data['data']) {
      products.add(ProductModel.fromJson(productMap));
    }
    return products;
  }

  @override
  Future<List<BannerEntity>> fetchBannersList() async {
    var data = await apiService.get(endPoint: 'banners');
    List<BannerEntity> banners = getBannerList(data);
    return banners;
  }

  List<BannerEntity> getBannerList(Map<String, dynamic> data) {
    List<BannerEntity> banners = [];
    for (var bannerMap in data['data']) {
      banners.add(BannerModel.fromJson(bannerMap));
    }
    return banners;
  }
}
