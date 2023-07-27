import 'package:dartz/dartz.dart';
import 'package:moshtarayat_app/core/errors/failure.dart';
import 'package:moshtarayat_app/core/usecases/usecase.dart';
import 'package:moshtarayat_app/features/home/domain/repos/home_repo.dart';

import '../entities/home_entity.dart';

class FetchProductsListUseCase extends UseCase<List<HomeEntity>, NoParam> {
  final HomeRepo homeRepo;

  FetchProductsListUseCase(this.homeRepo);

  @override
  Future<Either<Failure, List<HomeEntity>>> call([NoParam? param]) async {
    return await homeRepo.fetchProductsList();
  }
}
