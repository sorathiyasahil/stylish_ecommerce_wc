import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:stylish_ecommerce_wc/core/common_widget/common_rating.dart';
import 'package:stylish_ecommerce_wc/core/common_widget/common_text.dart';
import 'package:stylish_ecommerce_wc/core/constant/app_text_style.dart';
import 'package:stylish_ecommerce_wc/core/theme/app_colors.dart';
import 'package:stylish_ecommerce_wc/core/utils/sized_box_extension.dart';

class CommonTrendingProductScreen extends StatelessWidget {
  final void Function()? onTap;
  final double? height;
  final int? imagesIndex;
  final double? width;
  final String? productImages;
  final String? title;
  final String? description;
  final String? discountPrice;
  final String? discount;
  final String? price;
  final String? countItems;
  final int? rating;
  final int? discountAndPrice;
  const CommonTrendingProductScreen(
      {super.key,
      this.height,
      this.width,
      this.productImages,
      this.title,
      this.description,
      this.discountPrice,
      this.discount,
      this.price,
      this.countItems,
      this.rating,
      this.imagesIndex,
      this.discountAndPrice,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            color: AppColors.backgroundColors,
            borderRadius: BorderRadius.circular(10.r),
            boxShadow: [
              BoxShadow(
                color: AppColors.gray,
                blurRadius: 1,
                spreadRadius: 0,
              )
            ]),
        child: Column(
          children: [
            imagesIndex!.isEven
                ? Container(
                    height: 200.h,
                    width: 163.w,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(5.r),
                      image: DecorationImage(
                        image: AssetImage(productImages!),
                        fit: BoxFit.cover,
                      ),
                    ),
                  )
                : Container(
                    height: 146.h,
                    width: 164.w,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(5.r),
                      image: DecorationImage(
                        image: AssetImage(productImages!),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                4.height,
                CommonText(
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.start,
                  text: title ?? "Title",
                  style: AppTextStyle.w500(color: AppColors.backColor, fontSize: 14.sp),
                ),
                4.height,
                CommonText(
                  textAlign: TextAlign.start,
                  text: description ?? "",
                  style: AppTextStyle.w400(color: AppColors.backColor, fontSize: 10.sp),
                ),
                4.height,
                CommonText(
                  text: "₹$discountPrice",
                  style: AppTextStyle.w400(color: AppColors.backColor, fontSize: 12.sp),
                ),
                4.height,
                discountAndPrice != null
                    ? Row(
                        children: [
                          CommonText(
                            text: price ?? "",
                            style: AppTextStyle.w400(
                                color: AppColors.gray,
                                fontSize: 10.sp,
                                textDecoration: TextDecoration.lineThrough,
                                decorationColor: AppColors.gray),
                          ),
                          4.width,
                          CommonText(
                            text: discount ?? "",
                            style: AppTextStyle.w400(
                              color: AppColors.offerTextColors,
                              fontSize: 10.sp,
                            ),
                          ),
                        ],
                      )
                    : const SizedBox(),
                Row(
                  children: [
                    CommonRating(
                      rating: rating,
                    ),
                    CommonText(
                      text: countItems ?? " ",
                      style: AppTextStyle.w400(fontSize: 10.sp, color: AppColors.gray),
                    )
                  ],
                )
              ],
            ).paddingSymmetric(horizontal: 10.w)
          ],
        ),
      ),
    );
  }
}
