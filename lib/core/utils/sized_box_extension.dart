import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

extension SizeExtensions on num {
  /// Creates a SizedBox with height equal to this number.
  SizedBox get sized => SizedBox(height: h.toDouble(), width: w.toDouble());

  /// Creates a SizedBox with width equal to this number.
  SizedBox get width => SizedBox(width: w.toDouble());

  /// Creates a SizedBox with height equal to this number.
  SizedBox get height => SizedBox(height: h.toDouble());
}
