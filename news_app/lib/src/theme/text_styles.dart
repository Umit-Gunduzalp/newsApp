import 'package:flutter/material.dart';
import 'package:news_app/src/theme/app_fonts.dart';
import 'package:news_app/src/theme/app_sizes.dart';

/// bold = fontWeight 700
TextStyle bold8({
  required BuildContext context,
  Color? color,
  double? letterSpacing,
  double? height,
}) {
  return TextStyle(
    fontSize: AppSizes.sp(8),
    fontFamily: AppFont.of(context).fontBold,
    color: color,
    letterSpacing: -0.3,
    height: height,
  );
}

TextStyle bold10({
  required BuildContext context,
  Color? color,
  double? letterSpacing,
  double? height,
}) {
  return TextStyle(
    fontSize: AppSizes.sp(10),
    fontFamily: AppFont.of(context).fontBold,
    color: color,
    letterSpacing: -0.3,
    height: height,
  );
}

TextStyle bold12({
  required BuildContext context,
  Color? color,
  double? letterSpacing,
  double? height,
}) {
  return TextStyle(
    fontSize: AppSizes.sp(12),
    fontFamily: AppFont.of(context).fontBold,
    color: color,
    letterSpacing: -0.3,
    height: height,
  );
}

TextStyle bold14({
  required BuildContext context,
  Color? color,
  double? letterSpacing,
}) {
  return TextStyle(
    fontSize: AppSizes.sp(14),
    fontFamily: AppFont.of(context).fontBold,
    color: color,
    letterSpacing: letterSpacing ?? -0.3,
  );
}

TextStyle bold16({
  required BuildContext context,
  Color? color,
  double? letterSpacing,
  double? height,
}) {
  return TextStyle(
    fontSize: AppSizes.sp(16),
    fontFamily: AppFont.of(context).fontBold,
    color: color,
    letterSpacing: -0.3,
    height: height,
  );
}

TextStyle bold18({
  required BuildContext context,
  Color? color,
  double? letterSpacing,
  double? height,
}) {
  return TextStyle(
    fontSize: AppSizes.sp(18),
    fontFamily: AppFont.of(context).fontBold,
    color: color,
    letterSpacing: letterSpacing ?? -0.3,
    height: height,
  );
}


TextStyle bold20({
  required BuildContext context,
  Color? color,
  double? letterSpacing,
}) {
  return TextStyle(
    fontSize: AppSizes.sp(20),
    fontFamily: AppFont.of(context).fontBold,
    color: color,
    letterSpacing: letterSpacing ?? -0.3,
  );
}

TextStyle bold24({
  required BuildContext context,
  Color? color,
  double? letterSpacing,
}) {
  return TextStyle(
    fontSize: AppSizes.sp(24),
    fontFamily: AppFont.of(context).fontBold,
    color: color,
    letterSpacing: letterSpacing ?? -0.3,
  );
}

/// medium = fontWeight 500c
TextStyle medium8({
  required BuildContext context,
  Color? color,
  double? letterSpacing,
}) {
  return TextStyle(
    fontSize: AppSizes.sp(8),
    fontFamily: AppFont.of(context).fontMedium,
    color: color,
    letterSpacing: letterSpacing ?? -0.3,
  );
}

TextStyle medium10({
  required BuildContext context,
  Color? color,
  double? letterSpacing,
}) {
  return TextStyle(
    fontSize: AppSizes.sp(10),
    fontFamily: AppFont.of(context).fontMedium,
    color: color,
    letterSpacing: letterSpacing ?? -0.3,
  );
}

TextStyle medium12({
  required BuildContext context,
  Color? color,
  double? letterSpacing,
  double? height,
}) {
  return TextStyle(
    fontSize: AppSizes.sp(12),
    fontFamily: AppFont.of(context).fontMedium,
    color: color,
    letterSpacing: letterSpacing ?? -0.3,
    height: height,
  );
}

TextStyle medium14({
  required BuildContext context,
  Color? color,
  double? letterSpacing,
  double? height,
}) {
  return TextStyle(
    fontSize: AppSizes.sp(14),
    fontFamily: AppFont.of(context).fontMedium,
    color: color,
    height: height,
    letterSpacing: letterSpacing ?? -0.3,
  );
}

TextStyle medium16({
  required BuildContext context,
  Color? color,
  double? letterSpacing,
  double? height,
}) {
  return TextStyle(
    fontSize: AppSizes.sp(16),
    fontFamily: AppFont.of(context).fontMedium,
    color: color,
    letterSpacing: letterSpacing ?? -0.3,
    height: height,
  );
}

TextStyle medium20({
  required BuildContext context,
  Color? color,
  double? letterSpacing,
}) {
  return TextStyle(
    fontSize: AppSizes.sp(20),
    fontFamily: AppFont.of(context).fontMedium,
    color: color,
    letterSpacing: letterSpacing ?? -0.3,
  );
}

TextStyle medium24({
  required BuildContext context,
  Color? color,
  double? letterSpacing,
  double? height,
}) {
  return TextStyle(
    fontSize: AppSizes.sp(24),
    fontFamily: AppFont.of(context).fontMedium,
    color: color,
    letterSpacing: letterSpacing ?? -0.3,
    height: height,
  );
}

TextStyle medium30({
  required BuildContext context,
  Color? color,
  double? letterSpacing,
}) {
  return TextStyle(
    fontSize: AppSizes.sp(30),
    fontFamily: AppFont.of(context).fontMedium,
    color: color,
    letterSpacing: letterSpacing ?? -0.3,
  );
}

TextStyle medium32({
  required BuildContext context,
  Color? color,
  double? letterSpacing,
  double? height,
}) {
  return TextStyle(
    fontSize: AppSizes.sp(32),
    fontFamily: AppFont.of(context).fontMedium,
    color: color,
    height: height,
    letterSpacing: letterSpacing ?? -0.3,
  );
}

/// regular = fontWeight 400

TextStyle regular8({
  required BuildContext context,
  Color? color,
  double? letterSpacing,
}) {
  return TextStyle(
    fontSize: AppSizes.sp(8),
    fontFamily: AppFont.of(context).fontRegular,
    color: color,
    letterSpacing: letterSpacing ?? -0.3,
  );
}

TextStyle regular10({
  required BuildContext context,
  Color? color,
  double? letterSpacing,
}) {
  return TextStyle(
    fontSize: AppSizes.sp(10),
    fontFamily: AppFont.of(context).fontRegular,
    color: color,
    letterSpacing: letterSpacing ?? -0.3,
  );
}

TextStyle regular12({
  required BuildContext context,
  Color? color,
  double? letterSpacing,
  double? height,
}) {
  return TextStyle(
    fontSize: AppSizes.sp(12),
    fontFamily: AppFont.of(context).fontRegular,
    color: color,
    letterSpacing: letterSpacing ?? -0.3,
    height: height,
  );
}

TextStyle regular14({
  required BuildContext context,
  Color? color,
  double? letterSpacing,
  double? height,
}) {
  return TextStyle(
    fontSize: AppSizes.sp(14),
    fontFamily: AppFont.of(context).fontRegular,
    color: color,
    letterSpacing: letterSpacing ?? -0.3,
    height: height,
  );
}

TextStyle regular16({
  required BuildContext context,
  Color? color,
  double? letterSpacing,
  double? height,
}) {
  return TextStyle(
    fontSize: AppSizes.sp(16),
    fontFamily: AppFont.of(context).fontRegular,
    color: color,
    height: height,
    letterSpacing: letterSpacing ?? -0.3,
  );
}

TextStyle regular20({
  required BuildContext context,
  Color? color,
  double? letterSpacing,
  double? height,
}) {
  return TextStyle(
    fontSize: AppSizes.sp(20),
    fontFamily: AppFont.of(context).fontRegular,
    color: color,
    letterSpacing: letterSpacing ?? -0.3,
    height: height,
  );
}

TextStyle regular24({
  required BuildContext context,
  Color? color,
  double? letterSpacing,
}) {
  return TextStyle(
    fontSize: AppSizes.sp(24),
    fontFamily: AppFont.of(context).fontRegular,
    color: color,
    letterSpacing: letterSpacing ?? -0.3,
  );
}

TextStyle regular32({
  required BuildContext context,
  Color? color,
  double? letterSpacing,
  double? height,
}) {
  return TextStyle(
    fontSize: AppSizes.sp(32),
    fontFamily: AppFont.of(context).fontRegular,
    color: color,
    letterSpacing: letterSpacing ?? -0.3,
    height: height,
  );
}
