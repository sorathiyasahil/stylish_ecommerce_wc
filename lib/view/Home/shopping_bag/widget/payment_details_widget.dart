import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_common/get_reset.dart';
import 'package:stylish_ecommerce_wc/core/common_widget/common_border_button.dart';
import 'package:stylish_ecommerce_wc/core/common_widget/common_text.dart';
import 'package:stylish_ecommerce_wc/core/constant/app_string.dart';
import 'package:stylish_ecommerce_wc/core/constant/app_text_style.dart';
import 'package:stylish_ecommerce_wc/core/theme/app_colors.dart';
import 'package:stylish_ecommerce_wc/core/utils/sized_box_extension.dart';

class PaymentDetailsWidget extends StatelessWidget {
  const PaymentDetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CommonText(
          textAlign: TextAlign.start,
          text: AppString.orderPaymentDetails,
          style: AppTextStyle.w700(fontSize: 17.sp),
        ),
        12.height,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CommonText(
              text: AppString.orderAmounts,
              style: AppTextStyle.w400(fontSize: 15.sp),
            ),
            CommonText(
              text: "${AppString.rupeesLogo} 7000",
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
                  text: AppString.orderAmounts,
                  style: AppTextStyle.w400(fontSize: 15.sp),
                ),
                10.width,
                CommonText(
                  text: AppString.knowMore,
                  style: AppTextStyle.w700(fontSize: 12.sp, color: AppColors.onboardingButtonColor),
                ),
              ],
            ),
            CommonText(
              text: AppString.applyCoupons,
              style: AppTextStyle.w700(fontSize: 12.sp, color: AppColors.onboardingButtonColor),
            ),
          ],
        ),
        12.height,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CommonText(
              text: AppString.orderAmounts,
              style: AppTextStyle.w400(fontSize: 17.sp),
            ),
            CommonText(
              text: AppString.free,
              style: AppTextStyle.w700(fontSize: 12.sp, color: AppColors.onboardingButtonColor),
            ),
          ],
        ),
      ],
    ).paddingSymmetric(horizontal: 20.w);
  }
}
