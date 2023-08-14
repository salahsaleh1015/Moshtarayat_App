import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../domain/entities/banner_entity.dart';
import '../../../domain/usecase/fetch_banners_list_usecase.dart';

part 'banners_state.dart';

class BannersCubit extends Cubit<BannersStates> {
  BannersCubit(this.fetchBannersListUseCase) : super(BannersInitial());
  final FetchBannersListUseCase fetchBannersListUseCase;

  Future<void> fetchBannersList() async {
    emit(BannersLoading());
    var result = await fetchBannersListUseCase.call();
    result.fold(
        (l) => emit(BannersFailure(l.message)), (r) => emit(BannersSuccess(r)));
  }
}
