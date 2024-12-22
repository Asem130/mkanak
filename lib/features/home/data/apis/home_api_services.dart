import 'package:dio/dio.dart';
import 'package:mkanak/features/home/data/apis/home_api_constant.dart';
import 'package:mkanak/features/home/data/models/hotels_response_model.dart';
import 'package:retrofit/retrofit.dart';
part 'home_api_services.g.dart';

@RestApi(baseUrl: HomeApiConstants.baseUrl)
abstract class HomeApiService {
  factory HomeApiService(Dio dio, {String baseUrl}) = _HomeApiService;

  @GET(HomeApiConstants.popularHotels)
  Future<HotelsResponseModel> getPopularHotels();
}
