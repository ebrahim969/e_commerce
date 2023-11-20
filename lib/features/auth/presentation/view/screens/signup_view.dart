import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../sections/sign_up_sections/sign_up_view_body.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return const AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(statusBarColor: Colors.transparent),
      child: Scaffold(
        body: SignUpViewBody(),
      ),
    );
  }
}