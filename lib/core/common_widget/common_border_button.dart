import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stylish_ecommerce_wc/core/constant/app_icons.dart';
import 'package:stylish_ecommerce_wc/core/utils/sized_box_extension.dart';

import '../constant/app_text_style.dart';
import '../theme/app_colors.dart';
import 'common_text.dart';

class CommonBorderButton extends StatelessWidget {
  final text;
  final Color? borderColor;
  final Color? textColor;
  final bgColor;
  const CommonBorderButton({super.key, this.text, this.borderColor, this.textColor, this.bgColor});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
          backgroundColor: bgColor,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6.r),
              side: BorderSide(
                width: 1.w,
                color: borderColor ?? AppColors.backgroundColors,
              ))),
      onPressed: () {},
      child: Row(
        children: [
          CommonText(
            text: text,
            style:
                AppTextStyle.w600(color: textColor ?? AppColors.backgroundColors, fontSize: 12.sp),
          ),
          5.width,
          AppIcons.arrowForward,
        ],
      ),
    );
  }
}
