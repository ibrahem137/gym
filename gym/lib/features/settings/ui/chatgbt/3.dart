import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym/features/settings/ui/chatgbt/1.dart';

class SettingsCard extends StatelessWidget {
  final Color backgroundColorAvatar;
  final Widget iconAvatar;
  final String title;
  final String subtitle;
  final VoidCallback onSave;
  final List<List<SettingsFieldModel>> rows;

  const SettingsCard({
    super.key,
    required this.backgroundColorAvatar,
    required this.iconAvatar,
    required this.title,
    required this.subtitle,
    required this.onSave,
    required this.rows,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.r),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.r),
        boxShadow: [
          BoxShadow(
            blurRadius: 15,
            color: Colors.black.withOpacity(.08),
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Column(
        children: [
          /// HEADER
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
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 4.h),
                  Text(
                    subtitle,
                    style: TextStyle(fontSize: 12.sp, color: Colors.grey),
                  ),
                ],
              ),
            ],
          ),

          SizedBox(height: 20.h),

          /// FIELDS
          Column(
            children:
                rows.map((row) {
                  return Padding(
                    padding: EdgeInsets.only(bottom: 15.h),
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
            child: ElevatedButton(
              onPressed: onSave,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 12.h),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.r),
                ),
              ),
              child: const Text("Save Changes"),
            ),
          ),
        ],
      ),
    );
  }
}
