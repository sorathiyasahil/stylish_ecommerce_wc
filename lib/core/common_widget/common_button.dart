import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stylish_ecommerce_wc/core/common_widget/common_text.dart';
import 'package:stylish_ecommerce_wc/core/constant/app_text_style.dart';
import 'package:stylish_ecommerce_wc/core/theme/app_colors.dart';

class CommonButton extends StatelessWidget {
  final text;
  final void Function()? onTap;
  const CommonButton({super.key, this.text, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 55.h,
        width: 317.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: AppColors.onboardingButtonColor,
        ),
        child: Align(
          alignment: Alignment.center,
          child: CommonText(
            text: text,
            style: AppTextStyle.w600(fontSize: 20.sp, color: AppColors.backgroundColors),
          ),
        ),
      ),
    );
  }
}
