import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mkanak/core/networks/api_error_model.dart';
import 'package:mkanak/features/home/data/models/hotels_response_model.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;
  const factory HomeState.popularHotelsLoading() = PopularHotelsLoading;
  const factory HomeState.popularHotelsSuccses(List<Documents?>? documents) =
      PopularHotelsSuccses;
  const factory HomeState.popularHotelsError(ApiErrorModel apiErrorModel) =
      PopularHotelsError;
}
