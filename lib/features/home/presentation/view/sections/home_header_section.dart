import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../core/utils/colors.dart';

class HomeHeaderSection extends StatelessWidget {
  const HomeHeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: Get.width*.6,
          child: Card(
            elevation: 3,
            shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(16) ),
            child: const TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                prefixIcon: Icon(Icons.search, color: AppColors.primaryColor,),
                hintText: "Search Product"
              ),
            ),
          ),
        ),
        Container(
          height: 45,
          width: 45,
          decoration:const BoxDecoration(
            shape: BoxShape.circle,
            color: AppColors.whiteColor
          ),
          child: const Icon(Icons.shopping_cart_outlined, color: AppColors.primaryColor,),
        ),
        Container(
          height: 45,
          width: 45,
          decoration:const BoxDecoration(
            shape: BoxShape.circle,
            color: AppColors.whiteColor
          ),
          child: const Icon(Icons.notifications_outlined, color: AppColors.primaryColor,),
        )
      ],
    );
  }
}