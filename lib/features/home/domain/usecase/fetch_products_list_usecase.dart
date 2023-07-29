import 'package:dartz/dartz.dart';
import 'package:moshtarayat_app/core/errors/failure.dart';
import 'package:moshtarayat_app/core/usecases/usecase.dart';
import 'package:moshtarayat_app/features/home/domain/repos/home_repo.dart';

import '../entities/product_entity.dart';



class FetchProductsListUseCase extends UseCase<List<ProductEntity>, NoParam> {
  final HomeRepo homeRepo;

  FetchProductsListUseCase(this.homeRepo);

  @override
  Future<Either<Failure, List<ProductEntity>>> call([NoParam? param]) async {
    return await homeRepo.fetchProductsList();
  }
}
