import 'package:hive/hive.dart';
import 'package:moshtarayat_app/core/constants/constants.dart';
import 'package:moshtarayat_app/features/home/domain/entities/banner_entity.dart';
import 'package:moshtarayat_app/features/home/domain/entities/product_entity.dart';

abstract class HomeLocalDataSource {
  List<BannerEntity> fetchBannersList();
  List<ProductEntity> fetchProductsList();
}
class HomeLocalDataSourceImp extends HomeLocalDataSource{
  @override
  List<BannerEntity> fetchBannersList() {
     var box = Hive.box<BannerEntity>(kBannerBox);
         return box.values.toList();
  }

  @override
  List<ProductEntity> fetchProductsList() {
    var box = Hive.box<ProductEntity>(kProductBox);
    return box.values.toList();
  }

}