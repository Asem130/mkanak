import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mkanak/core/di/depandency_injection.dart';
import 'package:mkanak/core/routes/routes.dart';
import 'package:mkanak/features/home/data/models/hotels/hotels_response_model.dart';
import 'package:mkanak/features/home/home_screen.dart';
import 'package:mkanak/features/home/logic/home_cubit.dart';
import 'package:mkanak/features/home/ui/widgets/home_search_screen.dart';
import 'package:mkanak/features/hotel/ui/hotel_screen.dart';
import 'package:mkanak/features/login/logic/cubit/login_cubit.dart';
import 'package:mkanak/features/login/login_screen.dart';
import 'package:mkanak/features/onboarding/onboarding_screen.dart';
import 'package:mkanak/features/registration/logic/cubit/registration_cubit.dart';
import 'package:mkanak/features/registration/ui/register_screen.dart';

class AppRouter {
  Route? generateRoutes(RouteSettings settings) {
    final arguments = settings.arguments;
    switch (settings.name) {
      case Routes.onboardingScreen:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());
      case Routes.homeScreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider<HomeCubit>(
                create: (context) => getIt<HomeCubit>()
                  ..getAllHotels()
                  ..getHomeBoosters()
                  ..getPopularHotels(),
                child: const HomeScreen()));
      case Routes.loginScreen:
        //متنساش ال <>.
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => getIt<LoginCubit>(),
                  child: const LoginScreen(),
                ));
      case Routes.registerScreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider<RegistrationCubit>(
                  create: (context) => getIt<RegistrationCubit>(),
                  child: const RegisterScreen(),
                ));
      case Routes.searchScreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => getIt<HomeCubit>(),
                  child: const HomeSearchScreen(),
                ));
      case Routes.hotelScreen:
        if (arguments is HotelsData) {
          return MaterialPageRoute(
            builder: (_) => HotelScreen(hotelsData: arguments),
          );
        }
        return null;
      default:
        return null;
    }
  }
}
