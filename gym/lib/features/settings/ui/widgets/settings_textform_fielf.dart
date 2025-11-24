import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym/core/theme/app_shadow.dart';
import 'package:gym/core/theme/colors.dart';
import 'package:gym/core/theme/styles.dart';

class SettingsTextformFielf extends StatelessWidget {
  const SettingsTextformFielf({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Text('Email ', style: TextStyles.font14darkgraynormal),
        ),
        Container(
          decoration: BoxDecoration(
            boxShadow: AppShadows.outerList,
            borderRadius: BorderRadius.circular(30),
            color: Colors.white,
          ),

          width: 400.w,
          height: 50.h,
          child: TextFormField(
            decoration: InputDecoration(
              hintText: 'First Name',

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
