import 'package:e_commerce_array/features/auth/presentation/view/sections/sign_in_sections/remember_and_forget_section.dart';
import 'package:e_commerce_array/features/auth/presentation/view/sections/sign_in_sections/under_button_section.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/utils/styles.dart';
import '../../../../../../core/widgets/custom_button.dart';
import '../../../../../../core/widgets/custom_text_field.dart';


class LoginFormSection extends StatelessWidget {
  const LoginFormSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 20),
        Text(
          " Email Address",
          style: Styles.style12.copyWith(fontSize: 14),
        ),
        const SizedBox(height: 8),
        const CustomTextFeild(hinttext: "Email address"),
        const SizedBox(height: 20),
        Text(
          " Password",
          style: Styles.style12.copyWith(fontSize: 14),
        ),
        const SizedBox(height: 8),
        const CustomTextFeild(hinttext: "Password"),
        const SizedBox(height: 16),
        const RememberAndForgetPasswordSection(),
        const SizedBox(height: 24),
        const CustomButton(
          text: "Login",
        ),
        const SizedBox(height: 16),
        const UnderButtonSection(),
      ],
    );
  }
}


