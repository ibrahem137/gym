import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym/core/theme/app_shadow.dart';
import 'package:gym/core/theme/colors.dart';
import 'package:gym/core/theme/styles.dart';
import 'package:gym/features/settings/ui/widgets/settings_textform_fielf.dart';

class SettingsCard extends StatelessWidget {
  Color backgroundColorAvatar;
  Icon iconAvatar;
  SettingsCard({
    super.key,
    required this.backgroundColorAvatar,
    required this.iconAvatar,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        margin: const EdgeInsets.all(8.0),
        width: double.infinity,
        height: 600.h,
        decoration: BoxDecoration(
          boxShadow: AppShadows.bigOuterList,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundColor: backgroundColorAvatar,
                    child: iconAvatar,
                  ),
                  SizedBox(width: 10.w),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 10.h),
                      Text(
                        'Profile Settings',
                        style: TextStyles.font16Blackw600real,
                      ),
                      SizedBox(height: 2.h),
                      Text(
                        'Update your personal information',
                        style: TextStyle(
                          fontSize: 14.sp,
                          color: ColorsManegar.lightGray,
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              SizedBox(height: 100.h),
              SettingsTextformFielf(),
              SettingsTextformFielf(),
            ],
          ),
        ),
      ),
    );
  }
}
