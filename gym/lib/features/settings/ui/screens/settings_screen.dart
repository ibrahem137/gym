import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym/core/theme/colors.dart';
import 'package:gym/core/widgets/home_texts_headers.dart';
import 'package:gym/features/settings/ui/chatgbt/settings_field_model.dart.dart';
import 'package:gym/features/settings/ui/chatgbt/settings_card.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: ColorsManegar.backgroundcolor,
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 0.h, horizontal: 0.w),
        child: Column(
          children: [
            /// ----------- HEADER ------------
            HomeTextsHeaders(
              headerText: 'Settings',
              subHeaderText: 'Manage your gym settings and preferences',
            ),
            SizedBox(height: 50.h),

            /// ----------- PROFILE SETTINGS ------------
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: SettingsCard(
                buttonText: 'Save Settings ',
                backgroundColorAvatar: Colors.red.shade50,
                iconAvatar: const Icon(
                  Icons.person_2_outlined,
                  color: Colors.red,
                ),
                title: "Profile Settings",
                subtitle: "Update your personal information",
                onSave: () {},
                rows: [
                  [
                    SettingsFieldModel(
                      headerText: "First Name",
                      hintText: "John",
                      width: w * .36.w,
                    ),
                    SettingsFieldModel(
                      headerText: "Last Name",
                      hintText: "Doe",
                      width: w * .36.w,
                    ),
                  ],
                  [
                    SettingsFieldModel(
                      headerText: "Email",
                      hintText: "john@example.com",
                      width: w * .36.w,
                    ),
                    SettingsFieldModel(
                      headerText: "Phone",
                      hintText: "+1234567890",
                      width: w * .36.w,
                    ),
                  ],
                ],
              ),
            ),
            SizedBox(height: 25.h),

            /// ----------- GYM INFORMATION ------------
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: SettingsCard(
                buttonText: 'Save Settings ',
                backgroundColorAvatar: ColorsManegar.blueShade50,
                iconAvatar: const Icon(
                  Icons.home_work_rounded,
                  color: Colors.blue,
                ),
                title: "Gym Information",
                subtitle: "Update your gym details",
                onSave: () {},

                //text fields
                rows: [
                  [
                    SettingsFieldModel(
                      headerText: "Gym Name",
                      hintText: "FitLife Gym",
                      width: w * .36.w,
                    ),
                    SettingsFieldModel(
                      headerText: "Gym Phone",
                      hintText: "+1234567890",
                      width: w * .36.w,
                    ),
                  ],
                  [
                    SettingsFieldModel(
                      headerText: "Address",
                      hintText: "123 Main St, City",
                      width: w * .73.w,
                    ),
                  ],
                  [
                    SettingsFieldModel(
                      headerText: "Opening Time",
                      hintText: "06:00 AM",
                      width: w * .36.w,
                      icon: Icons.access_time,
                    ),
                    SettingsFieldModel(
                      headerText: "Closing Time",
                      hintText: "10:00 PM",
                      width: w * .36.w,
                      icon: Icons.access_time,
                    ),
                  ],
                ],
              ),
            ),
            SizedBox(height: 25.h),

            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 12.0,
                vertical: 15,
              ),
              child: SettingsCard(
                buttonText: 'Save Settings ',
                backgroundColorAvatar: Color(0xffFEE9EA),
                iconAvatar: const Icon(
                  Icons.lock_outline,
                  color: Color(0xffE7000B),
                ),
                title: "Security",
                subtitle: "Manage your password and security settings",
                onSave: () {},

                //text fields
                rows: [
                  [
                    SettingsFieldModel(
                      headerText: "Current Password",
                      hintText: "**********",
                      width: w * .73.w,
                      hintstyle: TextStyle(
                        color: ColorsManegar.black,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                  [
                    SettingsFieldModel(
                      headerText: "Confirm Password",
                      hintText: "**********",
                      width: w * .73.w,
                      hintstyle: TextStyle(
                        color: ColorsManegar.black,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                  [
                    SettingsFieldModel(
                      headerText: "New Password",
                      hintText: "**********",
                      width: w * .73.w,
                      hintstyle: TextStyle(
                        color: ColorsManegar.black,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
