import 'package:dartz/dartz.dart';
import 'package:moshtarayat_app/core/errors/failure.dart';
import 'package:moshtarayat_app/core/usecases/usecase.dart';
import 'package:moshtarayat_app/features/home/domain/repos/product_repo.dart';

import '../entities/product_entity.dart';

// هنا use case class
// ودا ايه الي اليوزر هعمله في التطبيق بتاعي
// بتورث من Use Case كبيره فيها كل الي ممكن تعمله اي  use case صغيره 


class FetchProductsListUseCase extends UseCase<List<ProductEntity>, NoParam> {
  final HomeRepo homeRepo;

  FetchProductsListUseCase(this.homeRepo);

  @override
  Future<Either<Failure, List<ProductEntity>>> call([NoParam? param]) async {
    return await homeRepo.fetchProductsList();
  }
}
