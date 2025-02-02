import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:stylish_ecommerce_wc/core/common_widget/common_simple_app_bar.dart';
import 'package:stylish_ecommerce_wc/core/constant/app_icons.dart';
import 'package:stylish_ecommerce_wc/core/constant/app_string.dart';
import 'package:stylish_ecommerce_wc/core/theme/app_colors.dart';
import 'package:stylish_ecommerce_wc/core/utils/sized_box_extension.dart';
import 'package:stylish_ecommerce_wc/view/Home/shipping/widget/Continue_button_widget.dart';
import 'package:stylish_ecommerce_wc/view/Home/shipping/widget/card_information_widget.dart';
import 'package:stylish_ecommerce_wc/view/Home/shipping/widget/item_total_widget.dart';

class ShippingScreen extends StatefulWidget {
  final String productInfo;
  const ShippingScreen({
    super.key,
    required this.productInfo,
  });

  @override
  State<ShippingScreen> createState() => _ShippingScreenState();
}

class _ShippingScreenState extends State<ShippingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColors,
      appBar: CommonSimpleAppBar(
        borderColor: AppColors.transparent,
        title: AppString.checkOut,
        leading: AppIcons.arrowBackIosNew1,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          17.height,
          ItemTotalWidget(
            price: widget.productInfo.toString(),
          ),
          22.height,
          const Divider().paddingOnly(left: 42.h, right: 24.w),
          22.height,
          const CardInformationWidget(),
          22.height,
          const ContinueButtonWidget()
        ],
      ),
    );
  }
}
