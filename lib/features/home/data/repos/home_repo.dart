import 'package:mkanak/core/networks/api_result.dart';
import 'package:mkanak/features/home/data/models/boosters/home_booster_model.dart';
import 'package:mkanak/features/home/data/models/hotels/hotels_response_model.dart';

abstract class HomeRepo {
  Future<ApiResult<HotelsResponseModel>> fetchPopularHotels();
  Future<ApiResult<HomeBoosterResponseModel>> fetchHomeBoosters();
   Future<ApiResult<HotelsResponseModel>> fetchAllHotels();
   
}
