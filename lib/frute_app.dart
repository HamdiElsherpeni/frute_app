import 'package:flutter/material.dart';
import 'package:frute_app/features/splash/presentation/view/splash_view.dart';
import 'package:get/get.dart';

class FruteApp extends StatelessWidget {
  const FruteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      debugShowCheckedModeBanner: false,
      home: SplashView(),
    );
  }
}
