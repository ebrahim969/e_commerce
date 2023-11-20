import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'sections/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent
      ),
      child:  Scaffold(
        body: HomeViewBody(),
      ),
    );
  }
}