import 'package:flutter/material.dart';
import 'package:frute_app/constsnt.dart';
import 'package:frute_app/features/splash/presentation/view/widgets/splash_view_body.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SafeArea(child: SplashViewBody()),
    );
  }
}