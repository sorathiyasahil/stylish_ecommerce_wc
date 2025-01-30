import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_common/get_reset.dart';
import 'package:stylish_ecommerce_wc/core/common_widget/common_border_button.dart';
import 'package:stylish_ecommerce_wc/core/common_widget/common_text.dart';
import 'package:stylish_ecommerce_wc/core/constant/app_string.dart';
import 'package:stylish_ecommerce_wc/core/constant/app_text_style.dart';
import 'package:stylish_ecommerce_wc/core/key/app_images_key.dart';
import 'package:stylish_ecommerce_wc/core/theme/app_colors.dart';
import 'package:stylish_ecommerce_wc/core/utils/sized_box_extension.dart';

class ApplyCouponsWidget extends StatelessWidget {
  const ApplyCouponsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            SvgPicture.asset(
              AppImagesKey.coupon,
              height: 20,
              width: 20,
              color: AppColors.backColor,
            ),
            10.width,
            CommonText(
              text: AppString.applyCoupons,
              style: AppTextStyle.w500(fontSize: 16.sp),
            ),
          ],
        ),
        CommonText(
          text: AppString.select,
          style: AppTextStyle.w700(fontSize: 16.sp, color: AppColors.onboardingButtonColor),
        )
      ],
    ).paddingSymmetric(horizontal: 18.sp);
  }
}
