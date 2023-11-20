import 'package:flutter/material.dart';
import 'login_form_section.dart';
import 'login_header_section.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: SingleChildScrollView(
        child: Column(
          children: const [
            LoginHeaderSection(),
            LoginFormSection(),
          ],
        ),
      ),
    );
  }
}




