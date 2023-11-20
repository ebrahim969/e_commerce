import 'package:e_commerce_array/core/utils/colors.dart';
import 'package:e_commerce_array/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home_header_section.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(height: Get.height * .07,),
          const HomeHeaderSection(),
          const SizedBox(height: 32,),
          const SpatialHomeSection(),
        ],
      ),
    );
  }
}

class SpatialHomeSection extends StatelessWidget {
  const SpatialHomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const[
            Text("Spatial for you", style: Styles.style24,),
            Text("See more", style: Styles.style12,)
          ],
        ),
        const SizedBox(height: 16,),
        Container(
          height: Get.height * .15,
          width: Get.width*3/4,
          decoration: BoxDecoration(
            color: AppColors.greyColor,
            borderRadius: BorderRadius.circular(16)
          ),
          child: const Text("Computers", style: Styles.style16,),
        )
      ],
    );
  }
}