import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mkanak/core/di/depandency_injection.dart';
import 'package:mkanak/core/routes/app_router.dart';
import 'package:mkanak/firebase_options.dart';
import 'package:mkanak/mkanak_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  setupGetit();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MkanakApp(
    appRouter: AppRouter(),
  ));
}
