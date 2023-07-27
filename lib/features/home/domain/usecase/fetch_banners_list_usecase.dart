import 'package:dartz/dartz.dart';
import '../../../../core/errors/failure.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/home_entity.dart';
import '../repos/home_repo.dart';

class FetchBannersListUseCase extends UseCase<List<HomeEntity>, NoParam> {
  final HomeRepo homeRepo;

  FetchBannersListUseCase(this.homeRepo);

  @override
  Future<Either<Failure, List<HomeEntity>>> call([NoParam? param]) async {
    return await homeRepo.fetchBannersList();
  }
}
