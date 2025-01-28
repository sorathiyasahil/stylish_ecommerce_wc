import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:stylish_ecommerce_wc/core/common_widget/common_text.dart';
import 'package:stylish_ecommerce_wc/core/constant/app_text_style.dart';
import 'package:stylish_ecommerce_wc/core/theme/app_colors.dart';

class CommonTextButton extends StatelessWidget {
  final void Function()? onPressed;
  final String? text;
  final TextStyle? textStyle;
  final textDecoration;
  final fontsize;
  final fixedSize;

  const CommonTextButton({
    super.key,
    this.onPressed,
    this.textDecoration,
    this.text,
    this.textStyle,
    this.fontsize,
    this.fixedSize,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(fixedSize: fixedSize ?? const Size(100, 50)),
      onPressed: onPressed,
      child: CommonText(
          text: text ?? "",
          style: textStyle ??
              AppTextStyle.w600(
                fontSize: fontsize ?? 18.sp,
                color: AppColors.onboardingButtonColor,
                textDecoration: textDecoration,
              )),
    ).marginZero.paddingZero;
  }
}
