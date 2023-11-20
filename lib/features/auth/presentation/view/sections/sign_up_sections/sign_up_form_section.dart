import 'package:e_commerce_array/features/auth/presentation/view/screens/verefication_view.dart';
import 'package:e_commerce_array/features/auth/presentation/view/sections/sign_up_sections/under_sign_up_button_section.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../../core/utils/styles.dart';
import '../../../../../../core/widgets/custom_button.dart';
import '../../../../../../core/widgets/custom_text_field.dart';

class SignUpFormSection extends StatelessWidget {
  const SignUpFormSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 20),
        Text(
          " Name",
          style: Styles.style12.copyWith(fontSize: 14),
        ),
        const SizedBox(height: 8),
        const CustomTextFeild(hinttext: "Name"),
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
        const SizedBox(height: 38),
         CustomButton(
          onPressed: ()
          {
            Get.to(()=> const VerificationView());
          },
          text: "Sign Up",
        ),
        const SizedBox(height: 16),
        const UnderSignUpButtonSection(),
      ],
    );
  }
}
