import 'package:flutter/material.dart';

class CommonText extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final TextAlign? textAlign;
  const CommonText({super.key, required this.text, this.style, this.textAlign});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign ?? TextAlign.center,
      style: style,
      overflow: TextOverflow.visible,
      maxLines: 2,
    );
  }
}
