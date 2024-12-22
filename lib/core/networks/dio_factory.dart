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

  // static void setTokenIntoHeaderAfterLogin(String token) {
  //   dio?.options.headers = {'Authorization': 'Bearer $token'};
  // }

  static void addDioHeader() async {
    dio?.options.headers = {
      'Accept': 'application/json',
      // 'Authorization':
      // 'Bearer ${await SharedPrefHelper.getSecuredString(SharedPrefKeys.userToken)}'
    };
  }
}
// import 'package:dio/dio.dart';
// import 'package:firebase_auth/firebase_auth.dart';

// Future<void> fetchFirestoreDocument() async {
//   final dio = Dio();

//   try {
//     // Get ID Token from Firebase Auth
//     String? idToken = await FirebaseAuth.instance.currentUser?.getIdToken();

//     // Perform GET request to Firestore REST API
//     final response = await dio.get(
//       'https://firestore.googleapis.com/v1/projects/mkanak-9a474/databases/(default)/documents/Hotels/drZ87X5XenvpqHGdoYEM',
//       options: Options(
//         headers: {
//           'Authorization': 'Bearer $idToken',
//         },
//       ),
//     );

//     print('Document Data: ${response.data}');
//   } catch (e) {
//     print('Error fetching Firestore document: $e');
//   }
// }
