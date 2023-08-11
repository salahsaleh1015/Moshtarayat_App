import 'package:dartz/dartz.dart';

import 'package:moshtarayat_app/core/errors/failure.dart';
import 'package:moshtarayat_app/features/home/data/data_source/home_local_data_source.dart';
import 'package:moshtarayat_app/features/home/data/data_source/home_remote_data_source.dart';

import 'package:moshtarayat_app/features/home/domain/entities/banner_entity.dart';

import 'package:moshtarayat_app/features/home/domain/entities/product_entity.dart';

import '../../domain/repos/product_repo.dart';

class HomeRepoImpl extends HomeRepo {
  final HomeRemoteDataSourceImpl homeRemoteDataSourceImpl;
  final HomeLocalDataSourceImp homeLocalDataSourceImp;

  HomeRepoImpl(this.homeRemoteDataSourceImpl, this.homeLocalDataSourceImp);
  @override
  Future<Either<Failure, List<BannerEntity>>> fetchBannersList() async {
    try {
      List<BannerEntity> banners;
      banners = homeLocalDataSourceImp.fetchBannersList();
      if (banners.isNotEmpty) {
        return Right(banners);
      }
      banners = await homeRemoteDataSourceImpl.fetchBannersList();
      return Right(banners);
    } catch (e) {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<ProductEntity>>> fetchProductsList()async {
    try {
      List<ProductEntity> products;
      products = homeLocalDataSourceImp.fetchProductsList();
      if (products.isNotEmpty) {
        return Right(products);
      }
      products = await homeRemoteDataSourceImpl.fetchProductsList();
      return Right(products);
    } catch (e) {
      return Left(ServerFailure());
    }
  }
}
