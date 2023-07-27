 import 'package:dartz/dartz.dart';


import '../../../../core/errors/failure.dart';
import '../entities/home_entity.dart';

abstract class HomeRepo {
 Future<Either<Failure,List<HomeEntity>>>fetchBannersList();
 Future<Either<Failure,List<HomeEntity>>>  fetchProductsList();
 }