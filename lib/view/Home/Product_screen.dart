import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:get/get_common/get_reset.dart';
import 'package:stylish_ecommerce_wc/core/common_widget/common_app_bar.dart';
import 'package:stylish_ecommerce_wc/core/common_widget/common_product_card.dart';
import 'package:stylish_ecommerce_wc/core/common_widget/common_search_bar.dart';
import 'package:stylish_ecommerce_wc/core/common_widget/common_sort_button.dart';
import 'package:stylish_ecommerce_wc/core/common_widget/common_text.dart';
import 'package:stylish_ecommerce_wc/core/constant/app_icons.dart';
import 'package:stylish_ecommerce_wc/core/constant/app_string.dart';
import 'package:stylish_ecommerce_wc/core/constant/app_text_style.dart';
import 'package:stylish_ecommerce_wc/core/theme/app_colors.dart';
import 'package:stylish_ecommerce_wc/core/utils/sized_box_extension.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  final TextEditingController _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColors,
      appBar: CommonAppBar(),
      body: Column(
        children: [
          CommonSearchBar(controller: _searchController),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CommonText(
                text: "${AppString.items.length} " + AppString.items,
                style: AppTextStyle.w600(color: AppColors.backColor, fontSize: 18.sp),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CommonSortButton(
                    text: AppString.sort,
                    icon: AppIcons.swap_vert,
                  ),
                  10.width,
                  CommonSortButton(
                    icon: AppIcons.filter,
                    text: AppString.filter,
                  )
                ],
              ).paddingSymmetric(vertical: 16.h),
            ],
          ),
          Expanded(
            child: MasonryGridView.builder(
              itemCount: AppString.trendingProductInfo.length,
              gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemBuilder: (context, index) {
                return CommonProductCard(
                  productImages: AppString.trendingProductInfo[index]["images"],
                ).paddingAll(8);
              },
            ),
          )
        ],
      ).paddingSymmetric(horizontal: 16.w, vertical: 16.h),
    );
  }
}
