import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:stylish_ecommerce_wc/core/common_widget/common_text.dart';
import 'package:stylish_ecommerce_wc/core/constant/app_string.dart';
import 'package:stylish_ecommerce_wc/core/constant/app_text_style.dart';
import 'package:stylish_ecommerce_wc/core/theme/app_colors.dart';

class CardInformationWidget extends StatefulWidget {
  const CardInformationWidget({super.key});

  @override
  State<CardInformationWidget> createState() => _CardInformationWidgetState();
}

class _CardInformationWidgetState extends State<CardInformationWidget> {
  int isSelect = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CommonText(
          text: AppString.payment,
          style: AppTextStyle.w500(fontSize: 18.sp),
        ),
        SizedBox(
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: AppString.cardInfo.length,
            itemBuilder: (context, index) {
              final cardInfo = AppString.cardInfo[index];
              return GestureDetector(
                onTap: () {
                  setState(() {
                    isSelect = index;
                  });
                },
                child: Container(
                  height: 59.h,
                  width: 309.w,
                  decoration: BoxDecoration(
                      color: AppColors.cardColor,
                      borderRadius: BorderRadius.circular(8.r),
                      border: Border.all(
                          color: isSelect == index
                              ? AppColors.onboardingButtonColor
                              : AppColors.transparent,
                          width: 1.5)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image(
                        image: AssetImage(cardInfo.cardLogo),
                        width: 47,
                        height: 40,
                      ),
                      CommonText(
                        text: cardInfo.cardNumber,
                        style: AppTextStyle.w600(fontSize: 15.sp, color: AppColors.priceColors),
                      )
                    ],
                  ).paddingSymmetric(horizontal: 20.w),
                ).paddingSymmetric(
                  vertical: 10.h,
                ),
              );
            },
          ),
        ),
      ],
    ).paddingSymmetric(horizontal: 33.w);
  }
}
