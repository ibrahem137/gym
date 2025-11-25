import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym/core/theme/colors.dart';
import 'package:gym/core/widgets/app_text_form_field.dart';

class SettingsFieldModel {
  final String headerText;
  final String hintText;
  final double width;
  final IconData? icon;
  final TextStyle? hintstyle;

  SettingsFieldModel({
    required this.headerText,
    required this.hintText,
    required this.width,
    this.icon,
    this.hintstyle,
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
          AppTextFormField(
            validator: (p0) {
              return null;
            },
            hintText: hintText,
            hintStyle: hintstyle ?? TextStyle(fontWeight: FontWeight.normal),
            suffixIcon: icon != null ? Icon(icon) : null,
            contentPadding: EdgeInsets.symmetric(
              horizontal: 15.w,
              vertical: 18.h,
            ),

            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: const BorderSide(color: ColorsManegar.lightGray),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: const BorderSide(color: ColorsManegar.mainOrange),
            ),
          ),
        ],
      ),
    );
  }
}
