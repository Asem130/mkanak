import 'package:mkanak/features/home/data/models/boosters/home_booster_model.dart';
import 'package:mkanak/features/home/data/models/hotels/hotels_response_model.dart';
import 'package:mkanak/features/home/data/repos/home_repo_impl.dart';
import 'package:mkanak/features/home/logic/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this._homeRepoImpl) : super(HomeState.initial());
  final HomeRepoImpl _homeRepoImpl;
  void getPopularHotels() async {
    emit(const HomeState.popularHotelsLoading());
    final response = await _homeRepoImpl.fetchPopularHotels();
    response.when(success: (HotelsResponseModel hotelsResponseModel) {
      emit(HomeState.popularHotelsSuccses(hotelsResponseModel.documents));
    }, failure: (apiErrorModel) {
      emit(HomeState.popularHotelsError(apiErrorModel));
    });
  }

  void getHomeBoosters() async {
    emit(const HomeState.homeBoostersLoading());
    final response = await _homeRepoImpl.fetchHomeBoosters();
    response.when(success: (HomeBoosterResponseModel homeBoosterResponseModel) {
      emit(HomeState.homeBoostersSuccses(homeBoosterResponseModel.documents));
    }, failure: (apiErrorModel) {
      emit(HomeState.popularHotelsError(apiErrorModel));
    });
  }
}
