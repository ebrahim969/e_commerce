import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../core/utils/assets.dart';
import '../../../../../../core/utils/colors.dart';
import '../../../../../../core/utils/styles.dart';

class SignUpHeaderSection extends StatelessWidget {
  const SignUpHeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: Get.height * .07,
        ),
        const Text(
          "Sign Up",
          style: Styles.style32,
        ),
         Text("Please enter your information below to sign up", style: Styles.style12.copyWith(color: AppColors.blackColor),),
        const SizedBox(
          height: 24,
        ),
        Align(
            child: Image.asset(
          AppAssets.splashImage,
          height: Get.height * .2,
        )),
      ],
    );
  }
}