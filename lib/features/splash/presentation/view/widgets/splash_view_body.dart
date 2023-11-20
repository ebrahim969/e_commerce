import 'package:e_commerce_array/core/utils/assets.dart';
import 'package:e_commerce_array/features/auth/presentation/view/screens/login_view.dart';
import 'package:e_commerce_array/features/splash/presentation/view/widgets/sliding_animation_logo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    navigateToHome();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return Align(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(AppAssets.splashImage, height: Get.height * .3,),
          const SizedBox(height: 16,),
          SlidingLogoAnimated(slidingAnimation: slidingAnimation)
        ],
      ),
    );
  }

   void initSlidingAnimation() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));

    slidingAnimation =
        Tween<Offset>(begin: Offset(Get.width * .1, 0), end: Offset.zero)
            .animate(animationController);
    animationController.forward();
  }

  void navigateToHome() {
    Future.delayed(const Duration(seconds: 4), () {
      Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)
      {
        return const LoginView();
      }) );
    });
  }
}

