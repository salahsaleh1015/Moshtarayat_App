import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:moshtarayat_app/features/home/domain/usecase/fetch_products_list_usecase.dart';

import '../../../domain/entities/product_entity.dart';

part 'products_state.dart';

class ProductsCubit extends Cubit<ProductsStates> {
  ProductsCubit(this.fetchProductsListUseCase) : super(ProductsInitial());
  final FetchProductsListUseCase fetchProductsListUseCase;

  Future<void> fetchProductList() async {
    emit(ProductsLoading());
    var result = await fetchProductsListUseCase.call();
    result.fold((l) => emit(ProductsFailure(l.message)),
        (r) => emit(ProductsSuccess(r)));
  }
}
