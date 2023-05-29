import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Dividers {
  static Widget vertical(double height) => SizedBox(height: height.h);

  static Widget horizontal(double width) => SizedBox(width: width.h);
}