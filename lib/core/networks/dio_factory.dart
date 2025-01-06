import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioFactory {
  /// private constructor as I don't want to allow creating an instance of this class
  DioFactory._();

  static Dio? dio;

  static Dio getDio() {
    Duration timeOut = const Duration(seconds: 30);

    if (dio == null) {
      dio = Dio();
      dio!
        ..options.connectTimeout = timeOut
        ..options.receiveTimeout = timeOut;
      addDioHeader();
      addDioInterceptor();
      return dio!;
    } else {
      return dio!;
    }
  }

  static void addDioInterceptor() {
    dio?.interceptors.add(
      PrettyDioLogger(
        requestBody: true,
        requestHeader: true,
        responseHeader: true,
      ),
    );
  }

  static void addDioHeader() async {
    dio?.options.headers = {
      'Accept': 'application/json',
      // 'Authorization': 'Bearer eyJhbGciOiJSUzI1NiIsImtpZCI6Ii1XWnBLUSJ9.eyJpc3MiOiJodHRwczovL2lkZW50aXR5dG9vbGtpdC5nb29nbGUuY29tLyIsImF1ZCI6Im1rYW5hay0zOWE1NiIsImlhdCI6MTczNjE2NjY3OSwiZXhwIjoxNzM3Mzc2Mjc5LCJ1c2VyX2lkIjoibTg4bHNxcHRFRFRCZlFCWGFJb0xCY0pEUlFIMiIsImVtYWlsIjoiYXNlbTExMDRAZ21haWwuY29tIiwic2lnbl9pbl9wcm92aWRlciI6InBhc3N3b3JkIiwidmVyaWZpZWQiOmZhbHNlfQ.ycKiJsSmr-RgRKrRMwQGvejZxcCspP0FTh2XCySCOTXlWh2G5_qNqHgooLdK-XXdtdlwKSRLop6Ia4dx-w9pUry1B-9zf58lJa9Bl4WGuUpSbUp6ngt27uF1MIR1yZ-jsjsrdAbe9Ja3yPUoliqJUHwmDj8rBl9m5L1P6upCc0g6McQYVf3uhiB0zvyJ2s3UD_XtYl2lF-6YmX5zsVv8olc3Y7GgzvLQWiIhwaylwPinnG5whw0-EWfTCPMgU3v73NI_m0P2HSPwszPZwF7Zmnaz41k5Ob-FJCp_tKIxPYTp2NdEpjJboIYZ50tSZ0f2V_kGWKXClW9Ogc1tWAQvpQ'
    };
  }
}
