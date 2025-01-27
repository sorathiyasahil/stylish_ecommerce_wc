import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stylish_ecommerce_wc/core/theme/app_colors.dart';

class CommonAuthButton extends StatelessWidget {
  final String Img;
  const CommonAuthButton({super.key, required this.Img});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 54.w,
      height: 54.h,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: AppColors.onboardingButtonColor,
            width: 1.w,
          ),
          image: DecorationImage(image: AssetImage(Img))),
    );
  }
}
