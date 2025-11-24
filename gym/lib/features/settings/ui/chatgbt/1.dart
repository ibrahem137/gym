import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SettingsFieldModel {
  final String headerText;
  final String hintText;
  final double width;
  final IconData? icon;

  SettingsFieldModel({
    required this.headerText,
    required this.hintText,
    required this.width,
    this.icon,
  });

  Widget build() {
    return SizedBox(
      width: width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            headerText,
            style: TextStyle(fontSize: 13.sp, fontWeight: FontWeight.w600),
          ),
          SizedBox(height: 5.h),
          TextField(
            decoration: InputDecoration(
              hintText: hintText,
              suffixIcon: icon != null ? Icon(icon) : null,
              contentPadding: EdgeInsets.symmetric(
                horizontal: 15.w,
                vertical: 15.h,
              ),
              filled: true,
              fillColor: Colors.white,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30.r),
                borderSide: const BorderSide(color: Colors.black12),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30.r),
                borderSide: const BorderSide(color: Colors.blue),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
