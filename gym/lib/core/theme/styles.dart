import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym/core/theme/colors.dart';

class TextStyles {
  static TextStyle font24BlackBold = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );

  static TextStyle font16Blackw600 = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
    color: Colors.black,
  );

  static TextStyle font13Blackw600 = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeight.w600,
    color: Colors.black,
  );
  static TextStyle font13mainOrange600 = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeight.w600,
    color: colorsManegar.mainOrange,
  );
  static TextStyle font13white800 = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeight.w800,
    color: const Color.fromARGB(255, 255, 255, 255),
  );

  static TextStyle font32BlueBold = TextStyle(fontSize: 32.sp);
}
