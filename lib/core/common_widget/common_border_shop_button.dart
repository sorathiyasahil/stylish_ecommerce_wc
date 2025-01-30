import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stylish_ecommerce_wc/core/common_widget/common_text.dart';
import 'package:stylish_ecommerce_wc/core/constant/app_text_style.dart';
import 'package:stylish_ecommerce_wc/core/theme/app_colors.dart';

class CommonBorderShopButton extends StatelessWidget {
  final Icon icon;
  final String? text;
  const CommonBorderShopButton({super.key, required this.icon, this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48.h,
      width: 172.w,
      decoration: BoxDecoration(
          color: AppColors.backgroundColors,
          borderRadius: BorderRadius.circular(8.r),
          border: Border.all(color: AppColors.gray, width: 0.5)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          icon,
          CommonText(
            text: text ?? "",
            style: AppTextStyle.w600(color: AppColors.backColor, fontSize: 14.sp),
          ),
        ],
      ),
    );
  }
}
