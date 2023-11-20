import 'package:e_commerce_array/features/auth/presentation/view/sections/sign_up_sections/sign_up_form_section.dart';
import 'package:e_commerce_array/features/auth/presentation/view/sections/sign_up_sections/sign_up_header_section.dart';
import 'package:flutter/material.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: SingleChildScrollView(
        child: Column(
          children: const [
            SignUpHeaderSection(),
            SignUpFormSection(),
          ],
        ),
      ),
    );
  }
}