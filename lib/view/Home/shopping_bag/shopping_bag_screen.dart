import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_common/get_reset.dart';
import 'package:stylish_ecommerce_wc/core/common_widget/common_app_bar.dart';
import 'package:stylish_ecommerce_wc/core/common_widget/common_border_button.dart';
import 'package:stylish_ecommerce_wc/core/common_widget/common_simple_app_bar.dart';
import 'package:stylish_ecommerce_wc/core/common_widget/common_text.dart';
import 'package:stylish_ecommerce_wc/core/constant/app_icons.dart';
import 'package:stylish_ecommerce_wc/core/key/app_images_key.dart';
import 'package:stylish_ecommerce_wc/core/theme/app_colors.dart';
import 'package:stylish_ecommerce_wc/core/utils/sized_box_extension.dart';
import 'package:stylish_ecommerce_wc/view/Home/shopping_bag/widget/apply_coupons_widget.dart';
import 'package:stylish_ecommerce_wc/view/Home/shopping_bag/widget/information_bg_widget.dart';
import 'package:stylish_ecommerce_wc/view/Home/shopping_bag/widget/order_total_widget.dart';
import 'package:stylish_ecommerce_wc/view/Home/shopping_bag/widget/payment_details_and_button_widget.dart';
import 'package:stylish_ecommerce_wc/view/Home/shopping_bag/widget/payment_details_widget.dart';

class ShoppingBagScreen extends StatefulWidget {
  const ShoppingBagScreen({super.key});

  @override
  State<ShoppingBagScreen> createState() => _ShoppingBagScreenState();
}

class _ShoppingBagScreenState extends State<ShoppingBagScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.homeBGColors,
        appBar: CommonSimpleAppBar(
          borderColor: AppColors.appBarBorderColor,
          title: "CheckOut",
          leading: AppIcons.arrowBackIosNew1,
          action: AppIcons.favorite,
        ),
        body: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InformationBgWidget(),
                54.height,
                ApplyCouponsWidget(),
                Divider().paddingSymmetric(horizontal: 19.w, vertical: 35.h),
                PaymentDetailsWidget(),
                Divider().paddingSymmetric(horizontal: 19.w, vertical: 35.h),
                OrderTotalWidget(),
                43.height,
                PaymentDetailsAndButtonWidget(),
              ],
            ),
          ],
        ));
  }
}
