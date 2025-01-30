import 'package:flutter/material.dart';
import 'package:stylish_ecommerce_wc/core/constant/app_icons.dart';

class CommonRating extends StatelessWidget {
  final rating;
  const CommonRating({super.key, this.rating});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        5,
        (index) {
          final value = index + 1;
          if (value == 0) {
            return const SizedBox();
          } else if (value > rating!) {
            return AppIcons.star_half; // Half star for ratings below the index
          } else {
            return AppIcons.star; // Full star for ratings above or equal to index
          }
        },
      ),
    );
  }
}
