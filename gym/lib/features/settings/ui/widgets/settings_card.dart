import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym/core/theme/app_shadow.dart';
import 'package:gym/core/theme/colors.dart';
import 'package:gym/core/theme/styles.dart';
import 'package:gym/core/widgets/app_text_button.dart';
import 'package:gym/features/settings/ui/widgets/settings_field_model.dart.dart';

class SettingsCard extends StatelessWidget {
  final Color backgroundColorAvatar;
  final Widget iconAvatar;
  final String title;
  final String subtitle;
  final VoidCallback onSave;
  final List<List<SettingsFieldModel>> rows;
  final String buttonText;

  const SettingsCard({
    super.key,
    required this.backgroundColorAvatar,
    required this.iconAvatar,
    required this.title,
    required this.subtitle,
    required this.onSave,
    required this.rows,
    required this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: ColorsManegar.backgroundcolor,
        borderRadius: BorderRadius.circular(35),
        boxShadow: [AppShadows.bigOuter],
      ),

      child: Column(
        children: [
          /// HEADER card
          Row(
            children: [
              CircleAvatar(
                radius: 24.r,
                backgroundColor: backgroundColorAvatar,
                child: iconAvatar,
              ),
              SizedBox(width: 15.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: TextStyles.font16Blackw600real),
                  SizedBox(height: 4.h),
                  Text(subtitle, style: TextStyles.font12grey),
                ],
              ),
            ],
          ),

          SizedBox(height: 20.h),

          /// Smart FIELDS
          Column(
            children:
                rows.map((row) {
                  return Padding(
                    padding: EdgeInsets.only(bottom: 19.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: row.map((e) => e.build()).toList(),
                    ),
                  );
                }).toList(),
          ),

          SizedBox(height: 10.h),

          /// BUTTON
          Align(
            alignment: Alignment.bottomRight,
            child: AppTextButton(
              buttonText: buttonText,
              textStyle: TextStyles.font14white600,
              onPressed: () {},
              buttonWidth: 120.w,
              buttonHeight: 12.h,
              borderRadius: 30,
            ),
          ),
        ],
      ),
    );
  }
}
