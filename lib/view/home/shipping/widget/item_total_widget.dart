import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:stylish_ecommerce_wc/core/common_widget/title_value.dart';
import 'package:stylish_ecommerce_wc/core/constant/app_string.dart';
import 'package:stylish_ecommerce_wc/core/utils/sized_box_extension.dart';

class ItemTotalWidget extends StatelessWidget {
  final String price;

  const ItemTotalWidget({
    super.key,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    int shippingCharge = 30;
    double finalPrice = double.parse(price) + 30;

    return Column(
      children: [
        TitleValue(value: "${AppString.rupeesLogo} $price", title: AppString.shipping),
        10.height,
        TitleValue(value: "${AppString.rupeesLogo} $shippingCharge", title: AppString.shipping),
        10.height,
        TitleValue(value: "${AppString.rupeesLogo} $finalPrice", title: AppString.total),
      ],
    ).paddingOnly(right: 22.w, left: 42.w);
  }
}
