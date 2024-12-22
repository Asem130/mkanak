import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mkanak/core/routes/app_router.dart';
import 'package:mkanak/core/routes/routes.dart';

class MkanakApp extends StatelessWidget {
  const MkanakApp({super.key, required this.appRouter});
  final AppRouter appRouter;
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        // Use builder only if you need to use library outside ScreenUtilInit context
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          onGenerateRoute: appRouter.generateRoutes,
          initialRoute: Routes.homeScreen,
        ));
  }
}
