 import 'package:dartz/dartz.dart';


import '../../../../core/errors/failure.dart';
import '../entities/product_entity.dart';


abstract class HomeRepo {
 Future<Either<Failure,List<ProductEntity>>>fetchBannersList();
 Future<Either<Failure,List<ProductEntity>>>  fetchProductsList();
 }