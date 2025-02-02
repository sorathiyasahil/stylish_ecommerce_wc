import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:stylish_ecommerce_wc/core/constant/app_string.dart';
import 'package:stylish_ecommerce_wc/core/constant/app_text_style.dart';
import 'package:stylish_ecommerce_wc/core/theme/app_colors.dart';
import 'package:stylish_ecommerce_wc/core/utils/sized_box_extension.dart';

import '../../../../core/common_widget/common_text.dart';

class OrderTotalWidget extends StatelessWidget {
  final String price;
  const OrderTotalWidget({super.key, required this.price});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CommonText(
              text: AppString.orderTotal,
              style: AppTextStyle.w400(fontSize: 15.sp),
            ),
            CommonText(
              text: "${AppString.rupeesLogo} ${price}",
              style: AppTextStyle.w600(fontSize: 17.sp),
            ),
          ],
        ),
        12.height,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CommonText(
                  text: AppString.eMIAvailable,
                  style: AppTextStyle.w400(fontSize: 15.sp),
                ),
                10.width,
                CommonText(
                  text: AppString.details,
                  style: AppTextStyle.w700(fontSize: 12.sp, color: AppColors.onboardingButtonColor),
                ),
              ],
            ),
          ],
        ),
      ],
    ).paddingSymmetric(horizontal: 20.w);
  }
}
