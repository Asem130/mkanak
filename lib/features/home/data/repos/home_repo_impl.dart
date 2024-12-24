import 'package:mkanak/core/networks/api_error_handler.dart';
import 'package:mkanak/core/networks/api_result.dart';
import 'package:mkanak/features/home/data/apis/home_api_services.dart';
import 'package:mkanak/features/home/data/models/boosters/home_booster_model.dart';
import 'package:mkanak/features/home/data/models/hotels/hotels_response_model.dart';
import 'package:mkanak/features/home/data/repos/home_repo.dart';

class HomeRepoImpl implements HomeRepo {
  final HomeApiService _homeApiService;
  HomeRepoImpl(this._homeApiService);

  /// get popular hotels
  @override
  Future<ApiResult<HotelsResponseModel>> fetchPopularHotels() async {
    try {
      final response = await _homeApiService.getPopularHotels();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }

  /// get home boosters
  @override
  Future<ApiResult<HomeBoosterResponseModel>> fetchHomeBoosters() async {
    try {
      final response = await _homeApiService.getHomeBooster();

      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }

  /// get all hotels
  @override
  Future<ApiResult<HotelsResponseModel>> fetchAllHotels() async {
    try {
      final response = await _homeApiService.getAllHotels();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
}
