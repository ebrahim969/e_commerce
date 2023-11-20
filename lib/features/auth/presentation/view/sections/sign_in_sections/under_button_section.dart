import 'package:e_commerce_array/features/auth/presentation/view/screens/signup_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../../core/utils/assets.dart';
import '../../../../../../core/utils/colors.dart';
import '../../../../../../core/utils/styles.dart';


class UnderButtonSection extends StatelessWidget {
  const UnderButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
                radius: 25,
                backgroundColor: AppColors.whiteColor,
                child: Image.asset(
                  AppAssets.googleImage,
                  height: 30,
                )),
            const SizedBox(
              width: 20,
            ),
            CircleAvatar(
                radius: 25,
                backgroundColor: AppColors.whiteColor,
                child: Image.asset(
                  AppAssets.googleImage,
                  height: 30,
                )),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Don't have an account?"),
            TextButton(
                onPressed: () {
                  Get.to(()=> const SignUpView());
                },
                child: Text(
                  "Sign Up",
                  style: Styles.style12
                      .copyWith(color: AppColors.primaryColor, fontSize: 16),
                ))
          ],
        )
      ],
    );
  }
}