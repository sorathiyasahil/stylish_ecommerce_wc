import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:stylish_ecommerce_wc/core/common_widget/common_text.dart';
import 'package:stylish_ecommerce_wc/core/constant/app_icons.dart';
import 'package:stylish_ecommerce_wc/core/constant/app_text_style.dart';
import 'package:stylish_ecommerce_wc/core/key/app_images_key.dart';
import 'package:stylish_ecommerce_wc/core/theme/app_colors.dart';
import 'package:stylish_ecommerce_wc/core/utils/sized_box_extension.dart';

class InformationBgWidget extends StatelessWidget {
  final Widget? child;
  const InformationBgWidget({super.key, this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 153.h,
      width: 426.w,
      decoration: BoxDecoration(
        color: AppColors.backgroundColors,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 153.h,
            width: 123.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4.r),
                image: DecorationImage(
                    image: AssetImage(
                      AppImagesKey.hotChocolate,
                    ),
                    fit: BoxFit.cover)),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CommonText(
                textAlign: TextAlign.start,
                text: "Women’s Casual Wear",
                style: AppTextStyle.w700(fontSize: 16.sp),
              ),
              CommonText(
                maxLine: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.start,
                text: "Checked Single-Breasted Blazer",
                style: AppTextStyle.w500(fontSize: 12.sp),
              ),
              Row(
                children: [
                  Container(
                    height: 25.h,
                    width: 90.w,
                    decoration: BoxDecoration(
                      color: AppColors.getStartedSubtitleColor,
                      borderRadius: BorderRadius.circular(4.r),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CommonText(
                          text: "Size",
                          style: AppTextStyle.w400(fontSize: 14.sp),
                        ),
                        CommonText(
                          text: "M",
                          style: AppTextStyle.w400(fontSize: 14.sp),
                        ),
                        Icon(AppIcons.keyboard_arrow_down),
                      ],
                    ),
                  ),
                  10.width,
                  Container(
                    height: 25.h,
                    width: 86.w,
                    decoration: BoxDecoration(
                      color: AppColors.getStartedSubtitleColor,
                      borderRadius: BorderRadius.circular(4.r),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CommonText(
                          text: "Qty",
                          style: AppTextStyle.w400(fontSize: 14.sp),
                        ),
                        CommonText(
                          text: "1",
                          style: AppTextStyle.w400(fontSize: 14.sp),
                        ),
                        Icon(AppIcons.keyboard_arrow_down),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  CommonText(
                    text: "Delivery by ",
                    style: AppTextStyle.w400(
                      fontSize: 13.sp,
                    ),
                  ),
                  5.width,
                  CommonText(
                    text: "10 May 2XXX",
                    style: AppTextStyle.w700(
                      fontSize: 13.sp,
                    ),
                  ),
                ],
              )
            ],
          ).paddingSymmetric(horizontal: 10.h, vertical: 16.w),
        ],
      ),
    ).paddingOnly(left: 17.w);
  }
}
