import 'package:dartz/dartz.dart';
import 'package:moshtarayat_app/features/home/domain/entities/banner_entity.dart';

import '../../../../core/errors/failure.dart';

abstract class BannerRepo{
  Future<Either<Failure,List<BannerEntity>>>fetchBannersList();
}