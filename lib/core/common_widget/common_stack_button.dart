import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:stylish_ecommerce_wc/core/common_widget/common_text.dart';
import 'package:stylish_ecommerce_wc/core/constant/app_text_style.dart';
import 'package:stylish_ecommerce_wc/core/theme/app_colors.dart';

class CommonStackButton extends StatelessWidget {
  final Color darkColors;
  final Color lightColors;
  final void Function()? onTap;
  final Icon icons;
  final String? text;
  const CommonStackButton(
      {super.key,
      required this.darkColors,
      required this.lightColors,
      required this.icons,
      this.text,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        GestureDetector(
          onTap: onTap,
          child: Container(
            height: 40.h,
            width: 145.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20.r),
                    topLeft: Radius.circular(20.r),
                    topRight: Radius.circular(7.r),
                    bottomRight: Radius.circular(7.r)),
                gradient: LinearGradient(
                  colors: [
                    lightColors,
                    darkColors,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                )),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CommonText(
                  text: text ?? "",
                  style: AppTextStyle.w600(fontSize: 15.sp, color: AppColors.backgroundColors),
                ).paddingSymmetric(horizontal: 15.w),
              ],
            ),
          ),
        ),
        Positioned(
          top: -2,
          child: Container(
            height: 45.h,
            width: 45.w,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(color: darkColors),
                BoxShadow(
                  color: lightColors,
                  spreadRadius: -5.0,
                  blurRadius: 20.0,
                ),
              ],
            ),
            child: icons,
          ),
        )
      ],
    );
  }
}
