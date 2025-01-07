import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mkanak/core/networks/api_error_model.dart';
import 'package:mkanak/features/home/data/models/boosters/home_booster_model.dart';
import 'package:mkanak/features/home/data/models/hotels/hotels_response_model.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;
  // Popular Hotels
  const factory HomeState.popularHotelsLoading() = PopularHotelsLoading;
  const factory HomeState.popularHotelsSuccses(
      List<HotelsDocuments?>? documents) = PopularHotelsSuccses;
  const factory HomeState.popularHotelsError(ApiErrorModel apiErrorModel) =
      PopularHotelsError;
  // Home Boosters
  const factory HomeState.homeBoostersLoading() = HomeBoostersLoading;
  const factory HomeState.homeBoostersSuccses(
      List<HomeBoostersDocuments?>? documents) = HomeBoostersSuccses;
  const factory HomeState.homeBoostersError(ApiErrorModel apiErrorModel) =
      HomeBoostersError;

  // All Hotels
  const factory HomeState.allHotelsLoading() = AllHotelsLoading;
  const factory HomeState.allHotelsSuccses(List<HotelsDocuments?>? documents) =
      AllHotelsSuccses;
  const factory HomeState.allHotelsError(ApiErrorModel apiErrorModel) =
      AllHotelsError;

  // searched hotels

  const factory HomeState.searchedHotelsSuccses(
      List<HotelsDocuments?>? documents) = SearchedHotelsSuccses;
  const factory HomeState.searchedHotelsError() = SearchedHotelsError;
}
