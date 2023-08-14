part of 'products_cubit.dart';

@immutable
abstract class ProductsStates {}

class ProductsInitial extends ProductsStates {}
class ProductsLoading extends ProductsStates {}
class ProductsFailure extends ProductsStates {
  final String errorMessage;

  ProductsFailure(this.errorMessage);
}
class ProductsSuccess extends ProductsStates {
 final List<ProductEntity> products;

  ProductsSuccess(this.products);
}
