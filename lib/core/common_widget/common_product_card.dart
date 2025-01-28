import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:stylish_ecommerce_wc/core/common_widget/common_text.dart';
import 'package:stylish_ecommerce_wc/core/constant/app_icons.dart';
import 'package:stylish_ecommerce_wc/core/constant/app_text_style.dart';
import 'package:stylish_ecommerce_wc/core/theme/app_colors.dart';
import 'package:stylish_ecommerce_wc/core/utils/sized_box_extension.dart';

class CommonProductCard extends StatelessWidget {
  final double? height;
  final double? imagesHeight;
  final double? width;
  final double? imagesWidth;
  final String? productImages;
  final String? title;
  final String? description;
  final String? discountPrice;
  final String? discount;
  final String? price;
  final String? countItems;
  final Widget? rating;
  const CommonProductCard({
    super.key,
    required this.productImages,
    this.title,
    this.description,
    this.discountPrice,
    this.price,
    this.countItems,
    this.discount,
    this.rating,
    this.height,
    this.width,
    this.imagesHeight,
    this.imagesWidth,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 241.h,
      width: width ?? 170.w,
      decoration: BoxDecoration(
        color: AppColors.backgroundColors,
        borderRadius: BorderRadius.circular(5.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: imagesHeight ?? 124.h,
            width: imagesWidth ?? 170.w,
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(5.r),
              image: DecorationImage(
                image: AssetImage(productImages!),
                fit: BoxFit.fill,
              ),
            ),
          ),
          CommonText(
            textAlign: TextAlign.start,
            text: title ?? "Title",
            style: AppTextStyle.w500(color: AppColors.backColor, fontSize: 12.sp),
          ),
          Expanded(
            child: CommonText(
              textAlign: TextAlign.start,
              text: description ?? "",
              style: AppTextStyle.w400(color: AppColors.backColor, fontSize: 10.sp),
            ),
          ),
          CommonText(
            text: "$discountPrice",
            style: AppTextStyle.w400(color: AppColors.backColor, fontSize: 10.sp),
          ),
          Row(
            children: [
              CommonText(
                text: "$price",
                style: AppTextStyle.w400(
                    color: AppColors.gray,
                    fontSize: 10.sp,
                    textDecoration: TextDecoration.lineThrough,
                    decorationColor: AppColors.gray),
              ),
              4.width,
              CommonText(
                text: discount ?? "discount",
                style: AppTextStyle.w400(
                  color: AppColors.offerTextColors,
                  fontSize: 10.sp,
                ),
              ),
            ],
          ),
          Row(
            children: [
              rating ??
                  Row(
                    children: [
                      Row(
                        children: List.generate(
                          4,
                          (index) {
                            return Row(
                              children: [
                                AppIcons.star,
                              ],
                            );
                          },
                        ),
                      ),
                      AppIcons.star_half,
                    ],
                  ),
              CommonText(
                text: countItems ?? " ",
                style: AppTextStyle.w400(fontSize: 10.sp, color: AppColors.gray),
              )
            ],
          )
        ],
      ),
    ).paddingSymmetric(horizontal: 12, vertical: 15);
  }
}
