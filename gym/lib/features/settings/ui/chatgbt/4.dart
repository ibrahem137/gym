import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym/features/settings/ui/chatgbt/1.dart';
import 'package:gym/features/settings/ui/chatgbt/3.dart';
import 'package:gym/features/settings/ui/widgets/settings_card.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xffF7F7F7),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 12.w),
        child: Column(
          children: [
            /// ----------- GYM INFORMATION ------------
            SettingsCard(
              backgroundColorAvatar: Colors.blue.shade50,
              iconAvatar: const Icon(
                Icons.home_work_rounded,
                color: Colors.blue,
              ),
              title: "Gym Information",
              subtitle: "Update your gym details",
              onSave: () {},
              rows: [
                [
                  SettingsFieldModel(
                    headerText: "Gym Name",
                    hintText: "FitLife Gym",
                    width: w * .55,
                  ),
                  SettingsFieldModel(
                    headerText: "Gym Phone",
                    hintText: "+1234567890",
                    width: w * .35,
                  ),
                ],
                [
                  SettingsFieldModel(
                    headerText: "Address",
                    hintText: "123 Main St, City",
                    width: w,
                  ),
                ],
                [
                  SettingsFieldModel(
                    headerText: "Opening Time",
                    hintText: "06:00 AM",
                    width: w * .48,
                    icon: Icons.access_time,
                  ),
                  SettingsFieldModel(
                    headerText: "Closing Time",
                    hintText: "10:00 PM",
                    width: w * .48,
                    icon: Icons.access_time,
                  ),
                ],
              ],
            ),

            SizedBox(height: 25.h),

            /// ----------- PROFILE SETTINGS ------------
            SettingsCard(
              backgroundColorAvatar: Colors.red.shade50,
              iconAvatar: const Icon(Icons.person, color: Colors.red),
              title: "Profile Settings",
              subtitle: "Update your personal information",
              onSave: () {},
              rows: [
                [
                  SettingsFieldModel(
                    headerText: "First Name",
                    hintText: "John",
                    width: w * .48,
                  ),
                  SettingsFieldModel(
                    headerText: "Last Name",
                    hintText: "Doe",
                    width: w * .48,
                  ),
                ],
                [
                  SettingsFieldModel(
                    headerText: "Email",
                    hintText: "john@example.com",
                    width: w * .48,
                  ),
                  SettingsFieldModel(
                    headerText: "Phone",
                    hintText: "+1234567890",
                    width: w * .48,
                  ),
                ],
              ],
            ),
          ],
        ),
      ),
    );
  }
}
