import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:stylish_ecommerce_wc/core/common_widget/common_rating.dart';
import 'package:stylish_ecommerce_wc/core/common_widget/common_text.dart';
import 'package:stylish_ecommerce_wc/core/constant/app_icons.dart';
import 'package:stylish_ecommerce_wc/core/constant/app_string.dart';
import 'package:stylish_ecommerce_wc/core/constant/app_text_style.dart';
import 'package:stylish_ecommerce_wc/core/key/app_images_key.dart';
import 'package:stylish_ecommerce_wc/core/theme/app_colors.dart';
import 'package:stylish_ecommerce_wc/core/utils/sized_box_extension.dart';
import 'package:stylish_ecommerce_wc/view/Home/model/add_to_cart_model.dart';

class CheckOutScreen extends StatefulWidget {
  const CheckOutScreen({
    super.key,
  });

  @override
  State<CheckOutScreen> createState() => _CheckOutScreenState();
}

class _CheckOutScreenState extends State<CheckOutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // shape: Border(bottom: BorderSide(color: AppColors.appBarBorderColor, width: 1.w)),
        backgroundColor: AppColors.profileBGColor,
        leading: AppIcons.arrowBackIosNew,
        centerTitle: true,
        title: CommonText(
          text: AppString.checkOut,
          style: AppTextStyle.w600(color: AppColors.backColor, fontSize: 16.sp),
        ),
      ),
      backgroundColor: AppColors.homeBGColors,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            18.height,
            Row(
              children: [
                AppIcons.blackLocationOn,
                4.width,
                CommonText(
                  text: "Delivery Address",
                  style: AppTextStyle.w700(
                    fontSize: 14.sp,
                  ),
                ),
              ],
            ),
            10.height,
            Row(
              children: [
                Stack(
                  children: [
                    Container(
                      height: 80.h,
                      width: 230.w,
                      decoration: BoxDecoration(
                          color: AppColors.backgroundColors,
                          borderRadius: BorderRadius.circular(6.r),
                          boxShadow: [
                            BoxShadow(
                              color: AppColors.gray,
                              blurRadius: 14,
                              spreadRadius: -8,
                            )
                          ]),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CommonText(
                            text: "Address:",
                            style: AppTextStyle.w600(fontSize: 12.sp),
                          ),
                          CommonText(
                            textAlign: TextAlign.start,
                            text: "216 St Paul's Rd, London N1 2LL, UK Contact :  +44-784232:",
                            style: AppTextStyle.w500(fontSize: 12.sp),
                          ),
                        ],
                      ).paddingSymmetric(horizontal: 12.w, vertical: 12.h),
                    ),
                    Positioned(
                      right: 10,
                      top: 8,
                      child: SvgPicture.asset(
                        AppImagesKey.editIcon,
                        height: 12.h,
                        width: 12.w,
                      ),
                    ),
                  ],
                ),
                10.width,
                Container(
                  height: 80.h,
                  width: 80.w,
                  decoration: BoxDecoration(
                      color: AppColors.backgroundColors,
                      borderRadius: BorderRadius.circular(6.r),
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.gray,
                          blurRadius: 14,
                          spreadRadius: -8,
                        )
                      ]),
                  child: AppIcons.addCircleOutline,
                ),
              ],
            ),
            24.height,
            CommonText(
              text: "Shopping List",
              style: AppTextStyle.w700(fontSize: 14.sp),
            ),
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: addtoCart.length,
              itemBuilder: (context, index) {
                int ratingValue = addtoCart[index].rating;
                return GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 191.h,
                    width: 331.w,
                    decoration: BoxDecoration(
                        color: AppColors.backgroundColors,
                        borderRadius: BorderRadius.circular(6.r),
                        boxShadow: [
                          BoxShadow(
                            color: AppColors.gray,
                            blurRadius: 14,
                            spreadRadius: -8,
                          )
                        ]),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 125.h,
                              width: 130.w,
                              decoration: BoxDecoration(
                                color: AppColors.backColor,
                                borderRadius: BorderRadius.circular(
                                  4.r,
                                ),
                                image: DecorationImage(
                                    image: AssetImage(
                                      addtoCart[index].img,
                                    ),
                                    fit: BoxFit.cover),
                              ),
                            ),
                            9.width,
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CommonText(
                                  text: addtoCart[index].title.toString(),
                                  style: AppTextStyle.w700(fontSize: 12.sp),
                                ),
                                8.height,
                                Row(
                                  children: [
                                    CommonText(
                                      textAlign: TextAlign.start,
                                      text: AppString.size,
                                      style: AppTextStyle.w700(fontSize: 12.sp),
                                    ),
                                    10.width,
                                    Container(
                                      height: 25,
                                      width: 90,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(4.r),
                                          border: Border.all(
                                            color: AppColors.gray,
                                          )),
                                      child: CommonText(
                                        text: addtoCart[index].size.join(", "),
                                        style: AppTextStyle.w700(
                                            color: AppColors.backColor, fontSize: 14.sp),
                                      ),
                                    ),
                                  ],
                                ),
                                8.height,
                                CommonRating(
                                  rating: ratingValue,
                                ),
                                8.height,
                                Row(
                                  children: [
                                    Container(
                                      height: 30.h,
                                      width: 80.w,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(4.r),
                                          border: Border.all(
                                            width: 0.3.w,
                                            color: AppColors.gray,
                                          )),
                                      child: Center(
                                        child: CommonText(
                                          text:
                                              "${AppString.rupeesLogo}${addtoCart[index].discountPrice}",
                                          style: AppTextStyle.w700(
                                              color: AppColors.backColor, fontSize: 16.sp),
                                        ),
                                      ),
                                    ),
                                    10.width,
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        CommonText(
                                          text: addtoCart[index].discount,
                                          style: AppTextStyle.w500(
                                              fontSize: 10.sp, color: AppColors.errorColor),
                                        ),
                                        CommonText(
                                          text: "${AppString.rupeesLogo}${addtoCart[index].price}",
                                          style: AppTextStyle.w500(
                                              fontSize: 14.sp,
                                              color: AppColors.gray,
                                              textDecoration: TextDecoration.lineThrough,
                                              decorationColor: AppColors.gray),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        Divider(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CommonText(
                              text: "Total Order:",
                              style: AppTextStyle.w700(fontSize: 12.sp),
                            ),
                            CommonText(
                              text: "${AppString.rupeesLogo}${addtoCart[index].discountPrice}",
                              style: AppTextStyle.w500(fontSize: 12.sp),
                            ),
                          ],
                        )
                      ],
                    ).paddingSymmetric(vertical: 10.h, horizontal: 10.w),
                  ).paddingSymmetric(vertical: 14.h),
                );
              },
            )
          ],
        ).paddingSymmetric(horizontal: 20.w),
      ),
    );
  }
}
