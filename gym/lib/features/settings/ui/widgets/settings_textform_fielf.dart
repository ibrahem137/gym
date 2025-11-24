import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym/core/theme/app_shadow.dart';
import 'package:gym/core/theme/colors.dart';
import 'package:gym/core/theme/styles.dart';

class SettingsTextformFielf extends StatelessWidget {
  final String? hintText;
  final String? headerText;
  const SettingsTextformFielf({
    super.key,
    required this.hintText,
    required this.headerText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Text(
            headerText!,
            textAlign: TextAlign.start,
            style: TextStyles.font13darkgraybold,
          ),
        ),
        Container(
          decoration: BoxDecoration(
            boxShadow: AppShadows.outerList,
            borderRadius: BorderRadius.circular(30),
            color: Colors.white,
          ),

          width: 540.w,
          height: 50.h,
          child: TextFormField(
            decoration: InputDecoration(
              hintText: hintText!,

              hintStyle: TextStyles.font13darkgrayw400,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(color: ColorsManegar.lightGray),
              ),
              suffixIcon: Icon(Icons.arrow_forward_ios, size: 16),
            ),
          ),
        ),
      ],
    );
  }
}
