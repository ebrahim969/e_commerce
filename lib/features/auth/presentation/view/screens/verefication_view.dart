import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../sections/verification_sections/verification_view_body.dart';

class VerificationView extends StatelessWidget {
  const VerificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return const AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(statusBarColor: Colors.transparent),
      child: Scaffold(
        body: VerificationViewBody(),
      ),
    );
  }
}