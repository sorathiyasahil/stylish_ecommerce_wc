import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stylish_ecommerce_wc/core/constant/app_string.dart';
import 'package:stylish_ecommerce_wc/core/constant/app_text_style.dart';
import 'package:stylish_ecommerce_wc/core/theme/app_colors.dart';

import '../constant/app_icons.dart';
import 'common_text.dart';

class CommonSortButton extends StatelessWidget {
  final icon;
  final text;
  const CommonSortButton({super.key, this.icon, this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24.h,
      width: 67.w,
      decoration: BoxDecoration(
          color: AppColors.backgroundColors,
          borderRadius: BorderRadius.circular(6),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade200,
              blurRadius: 16,
              // offset: const Offset(16, 0),
            ),
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CommonText(
            text: text,
            style: AppTextStyle.w400(fontSize: 12.sp),
          ),
          icon
        ],
      ),
    );
  }
}
