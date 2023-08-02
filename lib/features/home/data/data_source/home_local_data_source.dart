import 'package:moshtarayat_app/features/home/domain/entities/banner_entity.dart';
import 'package:moshtarayat_app/features/home/domain/entities/product_entity.dart';

abstract class HomeLocalDataSource {
  List<BannerEntity> fetchBannersList();
  List<ProductEntity> fetchProductsList();
}
class HomeLocalDataSourceImp extends HomeLocalDataSource{
  @override
  List<BannerEntity> fetchBannersList() {
    // TODO: implement fetchBannersList
    throw UnimplementedError();
  }

  @override
  List<ProductEntity> fetchProductsList() {
    // TODO: implement fetchProductsList
    throw UnimplementedError();
  }

}