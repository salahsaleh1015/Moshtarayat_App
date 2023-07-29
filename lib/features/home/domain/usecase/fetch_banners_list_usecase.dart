import 'package:dartz/dartz.dart';
import 'package:moshtarayat_app/features/home/domain/entities/banner_entity.dart';
import 'package:moshtarayat_app/features/home/domain/repos/banner_repo.dart';
import 'package:moshtarayat_app/features/home/domain/repos/product_repo.dart';
import '../../../../core/errors/failure.dart';
import '../../../../core/usecases/usecase.dart';

import '../entities/product_entity.dart';


class FetchBannersListUseCase extends UseCase<List<BannerEntity>, NoParam> {
final BannerRepo bannerRepo;

  FetchBannersListUseCase(this.bannerRepo);

  @override
  Future<Either<Failure, List<BannerEntity>>> call([NoParam? param]) async {
    return await bannerRepo.fetchBannersList();
  }
}
