import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../sections/sign_in_sections/login_view_body.dart';


class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return const AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent
      ),
      child:  Scaffold(
        body: LoginViewBody(),
      ),
    );
  }
}