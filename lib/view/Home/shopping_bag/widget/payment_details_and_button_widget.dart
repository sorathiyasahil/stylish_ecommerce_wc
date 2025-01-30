import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_common/get_reset.dart';
import 'package:stylish_ecommerce_wc/core/common_widget/common_button.dart';
import 'package:stylish_ecommerce_wc/core/common_widget/common_text.dart';
import 'package:stylish_ecommerce_wc/core/constant/app_string.dart';
import 'package:stylish_ecommerce_wc/core/constant/app_text_style.dart';
import 'package:stylish_ecommerce_wc/core/theme/app_colors.dart';

class PaymentDetailsAndButtonWidget extends StatelessWidget {
  const PaymentDetailsAndButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.h,
      width: 393.w,
      decoration: BoxDecoration(
          color: AppColors.shoppingBagBottomColor,
          boxShadow: [
            BoxShadow(
              color: AppColors.backColor,
              blurRadius: 1,
              spreadRadius: 0,
            )
          ],
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(24.r),
            topLeft: Radius.circular(24.r),
          )),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CommonText(
                    textAlign: TextAlign.start,
                    text: "${AppString.rupeesLogo} 7000.00",
                    style: AppTextStyle.w600(
                      color: AppColors.backColor,
                      fontSize: 16.sp,
                    ),
                  ),
                  CommonText(
                    textAlign: TextAlign.start,
                    text: AppString.viewDetails,
                    style: AppTextStyle.w600(
                      color: AppColors.onboardingButtonColor,
                      fontSize: 12.sp,
                    ),
                  ),
                ],
              ),
              CommonButton(
                widget: 219.w,
                height: 48.h,
                text: "Proceed to Payment",
                style: AppTextStyle.w600(fontSize: 17.sp, color: AppColors.backgroundColors),
              )
            ],
          ),
        ],
      ).paddingSymmetric(horizontal: 22.w, vertical: 35.h),
    );
  }
}
