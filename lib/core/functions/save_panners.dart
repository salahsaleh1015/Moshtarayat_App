import 'package:hive/hive.dart';

import '../../features/home/domain/entities/banner_entity.dart';

void saveBanners(List<BannerEntity>banners ,String boxName){

  var box = Hive.box(boxName);
  box.addAll(banners);
}