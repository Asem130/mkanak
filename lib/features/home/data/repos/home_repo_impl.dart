import 'package:mkanak/core/networks/api_error_handler.dart';
import 'package:mkanak/core/networks/api_result.dart';
import 'package:mkanak/features/home/data/apis/home_api_services.dart';
import 'package:mkanak/features/home/data/models/boosters/home_booster_model.dart';
import 'package:mkanak/features/home/data/models/hotels/hotels_response_model.dart';
import 'package:mkanak/features/home/data/models/hotels/searched_hotels_response_model.dart';
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

  @override
  Future<ApiResult<SearchedHotelsResponseModelWrapper>> fetchSearchedHotels(
      String hotelName) async {
    // Calculate next string for range query
    String nextString = _getNextString(hotelName);

    final queryBody = {
      "structuredQuery": {
        "from": [
          {"collectionId": "hotels"}
        ],
        "where": {
          "compositeFilter": {
            "op": "AND",
            "filters": [
              {
                "fieldFilter": {
                  "field": {"fieldPath": "name"},
                  "op": "GREATER_THAN_OR_EQUAL",
                  "value": {"stringValue": hotelName}
                }
              },
              {
                "fieldFilter": {
                  "field": {"fieldPath": "name"},
                  "op": "LESS_THAN",
                  "value": {"stringValue": nextString}
                }
              }
            ]
          }
        }
      }
    };

    try {
      final response = await _homeApiService.searchForHotel(queryBody);
      return ApiResult.success(response);
    } catch (error) {
      print(error.toString());
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }

  String _getNextString(String input) {
    // Get the next lexicographical string by adding one to the last character
    if (input.isEmpty) return input;

    int lastCharCode = input.codeUnitAt(input.length - 1);
    String nextChar = String.fromCharCode(lastCharCode + 1);
    return input.substring(0, input.length - 1) + nextChar;
  }
}
