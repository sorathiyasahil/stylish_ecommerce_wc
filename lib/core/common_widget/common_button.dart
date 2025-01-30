import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stylish_ecommerce_wc/core/common_widget/common_text.dart';
import 'package:stylish_ecommerce_wc/core/constant/app_text_style.dart';
import 'package:stylish_ecommerce_wc/core/theme/app_colors.dart';

class CommonButton extends StatelessWidget {
  final String? text;
  final double? height;
  final double? widget;
  final double? radius;
  final void Function()? onTap;
  final TextStyle? style;
  const CommonButton(
      {super.key, this.text, this.onTap, this.height, this.widget, this.style, this.radius});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height ?? 55.h,
        width: widget ?? 317.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius ?? 4.r),
          color: AppColors.onboardingButtonColor,
        ),
        child: Align(
          alignment: Alignment.center,
          child: CommonText(
            text: text ?? "",
            style: style ?? AppTextStyle.w600(fontSize: 20.sp, color: AppColors.backgroundColors),
          ),
        ),
      ),
    );
  }
}
