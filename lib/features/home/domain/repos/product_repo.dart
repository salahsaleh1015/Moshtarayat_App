 import 'package:dartz/dartz.dart';
import '../../../../core/errors/failure.dart';
import '../entities/banner_entity.dart';
import '../entities/product_entity.dart';

// هنا class ال repo
// بيقبي abstract class
// بنشوف احنا عايزين نعمل ايه في الابليكيشن و نكتبه هنا
// لاحظ بنحدد بس مش بنقول هيحصل ازاي
// Either دي عباره عن نوعين عشان لو في server failure

abstract class HomeRepo {
 Future<Either<Failure,List<ProductEntity>>>  fetchProductsList();
 Future<Either<Failure,List<BannerEntity>>>fetchBannersList();
 }