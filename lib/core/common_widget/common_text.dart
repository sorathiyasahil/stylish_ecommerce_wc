import 'package:flutter/material.dart';

class CommonText extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final TextAlign? textAlign;
  final overflow;
  const CommonText({super.key, required this.text, this.style, this.textAlign, this.overflow});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign ?? TextAlign.center,
      style: style,
      overflow: overflow ?? TextOverflow.visible,
      maxLines: 2,
    );
  }
}
