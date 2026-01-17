import 'package:flutter/material.dart';
import 'package:frute_app/core/utils/size_cofige.dart';
import 'package:frute_app/features/on_bording/presentation/view/on_bording_view.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/routes/default_transitions.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> fadingAnimation;

  @override
  void initState() {
    super.initState();
    animationMeathod();
    navigateMeathod();
  }

  @override
  void dispose() {
    animationController.dispose(); // ⭐ مهم جدًا
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeCofige().init(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Spacer(),
          Center(
            child: FadeTransition(
              opacity: fadingAnimation,
              child: Text(
                'Fruit Market',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Image.asset('assets/images/splash_image.png'),
        ],
      ),
    );
  }

  void navigateMeathod() {
    Future.delayed(const Duration(seconds: 1), () {
      if (!mounted) return; // حماية إضافية ✅
      Get.to(() => OnBordingView(), transition: Transition.fade);
    });
  }

  void animationMeathod() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 600),
    );

    fadingAnimation = Tween<double>(
      begin: 0.2,
      end: 1,
    ).animate(animationController);

    animationController.repeat(reverse: true);
  }
}
