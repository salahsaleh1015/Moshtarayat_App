part of 'banners_cubit.dart';

@immutable
abstract class BannersStates {}

class BannersInitial extends BannersStates {}
class BannersLoading extends BannersStates {}
class BannersFailure extends BannersStates {
  final String errorMessage;

  BannersFailure(this.errorMessage);
}
class BannersSuccess extends BannersStates {
  final List<BannerEntity> banners;

  BannersSuccess(this.banners);

}



