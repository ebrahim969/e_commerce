import 'package:e_commerce_array/core/utils/styles.dart';
import 'package:e_commerce_array/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerificationViewBody extends StatelessWidget {
  const VerificationViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: Get.height * .06,
          ),
          const VerificationHeaderSection(),
          const Spacer(),
          const CustomButton(text: "Verify"),
          const SizedBox(height: 16,)
        ],
      ),
    );
  }
}

class VerificationHeaderSection extends StatelessWidget {
  const VerificationHeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: const [Icon(Icons.arrow_back)],
        ),
        const SizedBox(
          height: 45,
        ),
        const Text(
          "Verification",
          style: Styles.style32,
        ),
        const SizedBox(
          height: 20,
        ),
        const Text(
          "Please enter the OTP code sent to you by SMS",
          style: Styles.style16,
        )
      ],
    );
  }
}
