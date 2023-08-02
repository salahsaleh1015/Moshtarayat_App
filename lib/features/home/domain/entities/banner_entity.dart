

import 'package:hive_flutter/hive_flutter.dart';
part 'banner_entity.g.dart';
@HiveType(typeId: 1)
class BannerEntity {
  @HiveField(0)
  final int bannerId;
  @HiveField(1)
  final String bannerImage;

  BannerEntity({required this.bannerId, required this.bannerImage});
}
