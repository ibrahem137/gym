import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym/core/theme/styles.dart';

class SettingsTextformFielf extends StatelessWidget {
  final String headerText;
  final String hintText;
  final Widget? suffixIcon;
  final TextInputType? keyboardType;

  const SettingsTextformFielf({
    super.key,
    required this.headerText,
    required this.hintText,
    this.suffixIcon,
    this.keyboardType,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(headerText, style: TextStyles.font18Blackw600),
        SizedBox(height: 6.h),
        TextFormField(
          keyboardType: keyboardType,
          decoration: InputDecoration(
            hintText: hintText,
            suffixIcon: suffixIcon,
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide.none,
            ),
            contentPadding: EdgeInsets.symmetric(
              vertical: 16.h,
              horizontal: 20.w,
            ),
          ),
        ),
      ],
    );
  }
}
