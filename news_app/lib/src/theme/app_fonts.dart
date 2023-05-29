import 'package:flutter/material.dart';
class AppFont {
  BuildContext? context;

  AppFont._(this.context); // make this constructor private

  static AppFont of(BuildContext context) => AppFont._(context); // pass context to above constructor

  String get fontRegular => 'Poppins-Regular';
  String get fontMedium =>  'Poppins-Medium';
  String get fontBold =>    'Poppins-Bold';
  String get fontLight =>    'Poppins-Light';

}