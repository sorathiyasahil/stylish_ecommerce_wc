import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stylish_ecommerce_wc/core/common_widget/common_text.dart';
import 'package:stylish_ecommerce_wc/core/theme/app_colors.dart';

import '../constant/app_text_style.dart';

class CommonDialog {
  static Future<void> showCustomDialog({
    required BuildContext context,
    required String imageAsset,
    required String message,
    double height = 210.0,
    double width = 331.0,
  }) {
    return showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          backgroundColor: AppColors.priceColors,
          child: Container(
            height: height.h,
            width: width.w,
            decoration: BoxDecoration(
              color: AppColors.backgroundColors,
              borderRadius: BorderRadius.circular(6.r),
            ),
            child: Column(
              children: [
                Image(
                  image: AssetImage(imageAsset),
                  height: 150,
                  width: 150,
                ),
                CommonText(
                  text: message,
                  style: AppTextStyle.w700(fontSize: 14.sp),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
