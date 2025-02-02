import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:stylish_ecommerce_wc/core/common_widget/common_simple_app_bar.dart';
import 'package:stylish_ecommerce_wc/core/constant/app_icons.dart';
import 'package:stylish_ecommerce_wc/core/constant/app_string.dart';
import 'package:stylish_ecommerce_wc/core/theme/app_colors.dart';
import 'package:stylish_ecommerce_wc/core/utils/sized_box_extension.dart';
import 'package:stylish_ecommerce_wc/view/Home/shopping_bag/widget/apply_coupons_widget.dart';
import 'package:stylish_ecommerce_wc/view/Home/shopping_bag/widget/information_bg_widget.dart';
import 'package:stylish_ecommerce_wc/view/Home/shopping_bag/widget/order_total_widget.dart';
import 'package:stylish_ecommerce_wc/view/Home/shopping_bag/widget/payment_details_and_button_widget.dart';
import 'package:stylish_ecommerce_wc/view/Home/shopping_bag/widget/payment_details_widget.dart';

class ShoppingBagScreen extends StatefulWidget {
  final TrendingProductInfo productData;
  const ShoppingBagScreen({
    super.key,
    required this.productData,
  });

  @override
  State<ShoppingBagScreen> createState() => _ShoppingBagScreenState();
}

class _ShoppingBagScreenState extends State<ShoppingBagScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.homeBGColors,
        appBar: CommonSimpleAppBar(
          leadingOnPressed: () {
            Get.back();
          },
          borderColor: AppColors.appBarBorderColor,
          title: AppString.shoppingBag,
          leading: AppIcons.arrowBackIosNew1,
          action: AppIcons.favorite,
        ),
        body: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                20.height,
                InformationBgWidget(
                  title: widget.productData.title,
                  image: widget.productData.img,
                  description: widget.productData.description,
                  size: widget.productData.size.join(","),
                ),
                30.height,
                const ApplyCouponsWidget(),
                const Divider().paddingSymmetric(horizontal: 19.w, vertical: 20.h),
                PaymentDetailsWidget(
                  price: widget.productData.discountPrice.toString(),
                ),
                const Divider().paddingSymmetric(horizontal: 19.w, vertical: 35.h),
                OrderTotalWidget(
                  price: widget.productData.discountPrice.toString(),
                ),
                35.height,
                PaymentDetailsAndButtonWidget(
                  price: widget.productData.discountPrice.toString(),
                ),
              ],
            ),
          ],
        ));
  }
}
