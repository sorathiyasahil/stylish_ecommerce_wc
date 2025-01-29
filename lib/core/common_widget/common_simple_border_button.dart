import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stylish_ecommerce_wc/core/common_widget/common_text.dart';
import 'package:stylish_ecommerce_wc/core/constant/app_text_style.dart';
import 'package:stylish_ecommerce_wc/core/theme/app_colors.dart';

class CommonSimpleBorderButton extends StatelessWidget {
  final double? height;
  final double? width;
  final Icon icons;
  final String? text;
  const CommonSimpleBorderButton(
      {super.key, this.height, this.width, required this.icons, this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 24.h,
      width: width ?? 97.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4.r), border: Border.all(color: AppColors.gray)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icons,
          CommonText(
            text: text ?? "",
            style: AppTextStyle.w500(fontSize: 10.sp, color: AppColors.priceColors),
          )
        ],
      ),
    );
  }
}
