import 'package:mkanak/core/networks/api_result.dart';
import 'package:mkanak/features/home/data/models/hotels_response_model.dart';

abstract class HomeRepo {
  Future<ApiResult<HotelsResponseModel>> fetchPopularHotels();
}
