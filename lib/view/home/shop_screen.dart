import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:stylish_ecommerce_wc/core/common_widget/common_border_shop_button.dart';
import 'package:stylish_ecommerce_wc/core/common_widget/common_product_card.dart';
import 'package:stylish_ecommerce_wc/core/common_widget/common_rating.dart';
import 'package:stylish_ecommerce_wc/core/common_widget/common_simple_app_bar.dart';
import 'package:stylish_ecommerce_wc/core/common_widget/common_simple_border_button.dart';
import 'package:stylish_ecommerce_wc/core/common_widget/common_sort_button.dart';
import 'package:stylish_ecommerce_wc/core/common_widget/common_stack_button.dart';
import 'package:stylish_ecommerce_wc/core/common_widget/common_text.dart';
import 'package:stylish_ecommerce_wc/core/constant/app_icons.dart';
import 'package:stylish_ecommerce_wc/core/constant/app_string.dart';
import 'package:stylish_ecommerce_wc/core/constant/app_text_style.dart';
import 'package:stylish_ecommerce_wc/core/routes/routes_name.dart';
import 'package:stylish_ecommerce_wc/core/utils/sized_box_extension.dart';
import 'package:stylish_ecommerce_wc/view/Home/model/add_to_cart_model.dart';

import '../../core/theme/app_colors.dart';

class ShopScreen extends StatefulWidget {
  final TrendingProductInfo product;

  const ShopScreen({super.key, required this.product});

  @override
  State<ShopScreen> createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
  String selectedSize = " ";
  int isSelected = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    selectedSize = widget.product.size[isSelected].toString();
  }

  final PageController _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.homeBGColors,
      appBar: CommonSimpleAppBar(
        leadingOnPressed: () {
          Get.back();
        },
        leading: AppIcons.arrowBackIosNew1,
        action: AppIcons.shoppingCartOutlined1,
      ),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 213.h,
                child: Align(
                  alignment: Alignment.center,
                  child: PageView.builder(
                    controller: _pageController,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Container(
                        height: 213.h,
                        width: 343.w,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(16.r),
                            image: DecorationImage(
                                image: AssetImage(widget.product.img), fit: BoxFit.cover)),
                      ).paddingSymmetric(horizontal: 5);
                    },
                  ),
                ),
              ).paddingSymmetric(vertical: 12.h, horizontal: 16.w),
              Center(
                child: SmoothPageIndicator(
                  controller: _pageController,
                  count: 5,
                  effect: ColorTransitionEffect(
                    dotWidth: 10,
                    dotHeight: 10,
                    activeDotColor: AppColors.onboardingButtonColor,
                  ),
                ),
              ),
              16.height,
              Row(
                children: [
                  CommonText(
                    text: AppString.size,
                    style: AppTextStyle.w700(fontSize: 16.sp),
                  ),
                  CommonText(
                    text: " ${selectedSize.toString()}",
                    style: AppTextStyle.w700(fontSize: 16.sp),
                  ),
                ],
              ).paddingSymmetric(horizontal: 16.w),
              SizedBox(
                height: 32.h,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: widget.product.size.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          isSelected = index;
                          selectedSize = widget.product.size[index].toString();
                        });
                      },
                      child: Container(
                        height: 70.h,
                        width: 80.w,
                        decoration: BoxDecoration(
                            color: isSelected == index
                                ? AppColors.callToActionButtonColors
                                : AppColors.backgroundColors,
                            borderRadius: BorderRadius.circular(8.r),
                            border: Border.all(color: AppColors.callToActionButtonColors)),
                        child: Center(
                          child: CommonText(
                            text: "${widget.product.size[index]}",
                            style: AppTextStyle.w700(
                              color: isSelected == index
                                  ? AppColors.backgroundColors
                                  : AppColors.callToActionButtonColors,
                              fontSize: 14.sp,
                            ),
                          ),
                        ),
                      ).paddingOnly(right: 5),
                    );
                  },
                ),
              ).paddingOnly(top: 8, bottom: 8, left: 16.w, right: 2),
              5.height,
              CommonText(
                textAlign: TextAlign.start,
                text: widget.product.title.toString(),
                style: AppTextStyle.w700(fontSize: 20.sp),
              ).paddingSymmetric(horizontal: 16.w),
              4.height,
              CommonText(
                maxLine: 1,
                textAlign: TextAlign.start,
                text: widget.product.description.toString(),
                style: AppTextStyle.w500(fontSize: 14.sp),
              ).paddingSymmetric(horizontal: 16.w),
              4.height,
              Row(
                children: [
                  const CommonRating(rating: 2),
                  8.width,
                  CommonText(
                    text: widget.product.review.toString(),
                    style: AppTextStyle.w500(fontSize: 14.sp),
                  )
                ],
              ).paddingSymmetric(horizontal: 16.w),
              8.height,
              Row(
                children: [
                  CommonText(
                    text: "₹${widget.product.price}",
                    style: AppTextStyle.w500(
                        textDecoration: TextDecoration.lineThrough,
                        color: AppColors.priceColors,
                        decorationColor: AppColors.priceColors,
                        fontSize: 14.sp),
                  ),
                  8.width,
                  CommonText(
                    text: "₹${widget.product.discountPrice}",
                    style: AppTextStyle.w600(fontSize: 14.sp, color: AppColors.backColor),
                  ),
                  8.width,
                  CommonText(
                    text: widget.product.discount.toString(),
                    style: AppTextStyle.w700(
                        fontSize: 14.sp, color: AppColors.callToActionButtonColors),
                  ),
                ],
              ).paddingSymmetric(horizontal: 16.w),
              8.height,
              CommonText(
                text: AppString.productDetails,
                style: AppTextStyle.w600(fontSize: 14.sp, color: AppColors.backColor),
              ).paddingSymmetric(horizontal: 16.w),
              5.height,
              CommonText(
                maxLine: 10,
                textAlign: TextAlign.justify,
                overflow: TextOverflow.visible,
                text: widget.product.description.toString(),
                style: AppTextStyle.w500(fontSize: 12.sp),
              ).paddingSymmetric(horizontal: 16.w),
              8.height,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CommonSimpleBorderButton(
                    icons: AppIcons.locationOn,
                    text: AppString.nearestStore,
                  ),
                  CommonSimpleBorderButton(
                    width: 55.w,
                    icons: AppIcons.lockOutline,
                    text: AppString.vIP,
                  ),
                  CommonSimpleBorderButton(
                    width: 105.w,
                    icons: AppIcons.publishedWithChanges,
                    text: AppString.returnPolicy,
                  ),
                  40.width,
                ],
              ).paddingSymmetric(horizontal: 16.w),
              10.height,
              Row(
                children: [
                  CommonStackButton(
                    onTap: () {
                      addtoCart.add(TrendingProductInfo(
                        title: widget.product.title,
                        discountPrice: widget.product.discountPrice,
                        price: widget.product.price,
                        img: widget.product.img,
                        description: widget.product.description,
                        discount: widget.product.discount,
                        review: widget.product.review,
                        rating: widget.product.rating,
                        size: [selectedSize.toString()],
                      ));
                      Get.toNamed(RoutesName.checkOutScreen);

                      // setState(() {
                      //   Get.toNamed(RoutesName.checkOutScreen, arguments: {
                      //     "title": widget.product.title.toString(),
                      //     "images": widget.product.img.toString(),
                      //     "size": size.toString(),
                      //     "rating": widget.product.rating,
                      //     "price": widget.product.price.toString(),
                      //     "discountPrice": widget.product.discountPrice.toString(),
                      //     "discount": widget.product.discount.toString(),
                      //   });
                      // });
                    },
                    darkColors: AppColors.darkBlur,
                    lightColors: AppColors.blur,
                    icons: AppIcons.whiteShoppingCartOutlined,
                    text: AppString.goToCart,
                  ),
                  10.width,
                  CommonStackButton(
                    darkColors: AppColors.darkGreen,
                    lightColors: AppColors.lightGreen,
                    icons: AppIcons.click,
                    text: AppString.buyNow,
                  ),
                ],
              ).paddingSymmetric(horizontal: 16.w),
              10.height,
              Container(
                height: 60.h,
                width: 350.w,
                decoration: BoxDecoration(
                    color: AppColors.deliveryTimeBgColor, borderRadius: BorderRadius.circular(5.r)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CommonText(
                      textAlign: TextAlign.start,
                      text: AppString.deliveryIn,
                      style: AppTextStyle.w600(color: AppColors.backColor, fontSize: 14.sp),
                    ),
                    CommonText(
                      textAlign: TextAlign.start,
                      text: AppString.withInHour,
                      style: AppTextStyle.w700(color: AppColors.backColor, fontSize: 21.sp),
                    ),
                  ],
                ).paddingSymmetric(horizontal: 26.w, vertical: 5.h),
              ).paddingSymmetric(horizontal: 16.w),
              // 10.height,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CommonBorderShopButton(
                    icon: AppIcons.visibility,
                    text: AppString.viewSimilar,
                  ),
                  5.width,
                  CommonBorderShopButton(
                    icon: AppIcons.style,
                    text: AppString.addToCompare,
                  )
                ],
              ).paddingSymmetric(horizontal: 4.w),
              // 10.height,
              CommonText(
                text: AppString.similarTo,
                style: AppTextStyle.w700(
                  fontSize: 20.sp,
                  color: AppColors.backColor,
                ),
              ).paddingSymmetric(horizontal: 16.w),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CommonText(
                    text: "${AppString.trendingProductsInfo.length} ${AppString.items}",
                    style: AppTextStyle.w700(color: AppColors.backColor, fontSize: 18.sp),
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
                  )
                ],
              ).paddingSymmetric(horizontal: 16.w),
              SizedBox(
                child: GridView.builder(
                  itemCount: AppString.trendingProductsInfo.length,
                  physics: const NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.75,
                  ),
                  itemBuilder: (context, index) {
                    final product = AppString.trendingProductsInfo[index];
                    return CommonProductCard(
                      height: 100.h,
                      imagesHeight: 136,
                      imagesWidth: 164,
                      width: 168.w,
                      rating: 3,
                      productImages: product.img,
                      title: product.title,
                      description: product.description,
                      discountPrice: product.discountPrice,
                      countItems: product.review.toString(),
                    );
                  },
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
