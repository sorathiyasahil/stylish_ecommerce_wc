import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:stylish_ecommerce_wc/core/constant/app_text_style.dart';
import 'package:stylish_ecommerce_wc/core/theme/app_colors.dart';
import 'package:stylish_ecommerce_wc/core/utils/sized_box_extension.dart';

import 'common_border_button.dart';
import 'common_text.dart';

class CommonCallToActionButton extends StatelessWidget {
  final String? buttonText;
  final String? title;
  final String? subtitle;
  final Icon? icon;
  final Color? bgColor;
  const CommonCallToActionButton(
      {super.key, this.buttonText, this.title, this.subtitle, this.icon, this.bgColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 439.w,
      height: 87.h,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CommonText(
                text: title!,
                style: AppTextStyle.w500(fontSize: 16.sp, color: AppColors.backgroundColors),
              ),
              8.height,
              Row(
                children: [
                  icon ?? const Icon(Icons.add),
                  4.width,
                  CommonText(
                    text: subtitle ?? "",
                    style: AppTextStyle.w500(fontSize: 12.sp, color: AppColors.backgroundColors),
                  ),
                ],
              )
            ],
          ),
          CommonBorderButton(
            text: buttonText ?? "",
          )
        ],
      ).paddingSymmetric(horizontal: 12.w),
    ).paddingSymmetric(horizontal: 16.w);
  }
}
