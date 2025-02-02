import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:stylish_ecommerce_wc/core/common_widget/common_text.dart';
import 'package:stylish_ecommerce_wc/core/constant/app_icons.dart';
import 'package:stylish_ecommerce_wc/core/constant/app_string.dart';
import 'package:stylish_ecommerce_wc/core/constant/app_text_style.dart';
import 'package:stylish_ecommerce_wc/core/theme/app_colors.dart';
import 'package:stylish_ecommerce_wc/core/utils/sized_box_extension.dart';

class InformationBgWidget extends StatelessWidget {
  final Widget? child;

  final String title;
  final String image;
  final String description;

  final String size;
  const InformationBgWidget({
    super.key,
    this.child,
    required this.title,
    required this.image,
    required this.description,
    required this.size,
  });

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
                      image,
                    ),
                    fit: BoxFit.cover)),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CommonText(
                textAlign: TextAlign.start,
                text: title,
                style: AppTextStyle.w700(fontSize: 16.sp),
              ),
              ConstrainedBox(
                constraints: BoxConstraints(maxWidth: 200), // Adjust max width
                child: CommonText(
                  maxLine: 1,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.start,
                  text: description,
                  style: AppTextStyle.w500(fontSize: 12.sp),
                ),
              ),
              Container(
                height: 25.h,
                width: 120.w,
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
                      text: size,
                      style: AppTextStyle.w400(fontSize: 14.sp),
                    ),
                    Icon(AppIcons.keyboard_arrow_down),
                  ],
                ),
              ),
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
              Row(
                children: [
                  CommonText(
                    text: AppString.deliveryBy,
                    style: AppTextStyle.w400(
                      fontSize: 13.sp,
                    ),
                  ),
                  5.width,
                  CommonText(
                    text: AppString.deliveryDate,
                    style: AppTextStyle.w700(
                      fontSize: 13.sp,
                    ),
                  ),
                ],
              )
            ],
          ).paddingSymmetric(horizontal: 10.h, vertical: 5.w),
        ],
      ),
    ).paddingOnly(left: 17.w);
  }
}
