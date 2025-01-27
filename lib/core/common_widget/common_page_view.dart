import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CommonPageView extends StatelessWidget {
  final controller;
  final itemcount;
  final void Function(int)? onPageChanged;
  final AssetImage;
  const CommonPageView(
      {super.key, this.controller, this.itemcount, this.onPageChanged, this.AssetImage});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350.h,
      child: PageView.builder(
        controller: controller,
        itemCount: itemcount,
        onPageChanged: onPageChanged,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                height: 350.h,
                width: 350.w,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      AssetImage,
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
