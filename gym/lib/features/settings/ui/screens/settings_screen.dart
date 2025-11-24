import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym/core/theme/colors.dart';
import 'package:gym/core/theme/styles.dart';
import 'package:gym/core/widgets/app_add_button.dart';
import 'package:gym/features/settings/ui/widgets/settings_card.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManegar.backgroundcolor,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [
                Text(
                  "Settings",
                  style: TextStyles.font28Blackboldstart,
                  textAlign: TextAlign.start,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
            child: Row(
              children: [
                Text(
                  "Manage your gym settings and preferences",
                  style: TextStyles.font16Blackw500,
                  textAlign: TextAlign.start,
                ),
              ],
            ),
          ),
          SizedBox(height: 15.h),
          SettingsCard(
            backgroundColorAvatar: ColorsManegar.lightorange,
            iconAvatar: Icon(
              Icons.person_2_outlined,
              color: ColorsManegar.mainOrange,
            ),
          ),
        ],
      ),
    );
  }
}
