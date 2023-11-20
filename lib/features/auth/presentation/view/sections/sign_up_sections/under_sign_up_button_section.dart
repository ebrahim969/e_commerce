import 'package:e_commerce_array/features/auth/presentation/view/screens/login_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../../core/utils/colors.dart';
import '../../../../../../core/utils/styles.dart';

class UnderSignUpButtonSection extends StatelessWidget {
  const UnderSignUpButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Already have an account?"),
        TextButton(
            onPressed: () {
              Get.to(()=> const LoginView());
            },
            child: Text(
              "Sign in",
              style: Styles.style12
                  .copyWith(color: AppColors.primaryColor, fontSize: 16),
            ))
      ],
    );
  }
}