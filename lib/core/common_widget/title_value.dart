import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stylish_ecommerce_wc/core/common_widget/common_text.dart';
import 'package:stylish_ecommerce_wc/core/theme/app_colors.dart';

import '../constant/app_text_style.dart';

class TitleValue extends StatelessWidget {
  final String title;
  final String value;
  const TitleValue({
    super.key,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CommonText(
          textAlign: TextAlign.start,
          text: title,
          style: AppTextStyle.w600(
            fontSize: 18.sp,
            color: AppColors.gray,
          ),
        ),
        CommonText(
          textAlign: TextAlign.start,
          text: value,
          style: AppTextStyle.w600(
            fontSize: 18.sp,
            color: AppColors.gray,
          ),
        ),
      ],
    );
  }
}
