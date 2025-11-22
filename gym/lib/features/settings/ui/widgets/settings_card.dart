import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym/core/theme/app_shadow.dart';
import 'package:gym/core/theme/colors.dart';

class SettingsCard extends StatelessWidget {
  const SettingsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100.h,
      decoration: BoxDecoration(
        boxShadow: AppShadows.bigOuterList,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        children: [
          CircleAvatar(radius: 40, backgroundColor: ColorsManegar.mainOrange),
        ],
      ),
    );
  }
}
