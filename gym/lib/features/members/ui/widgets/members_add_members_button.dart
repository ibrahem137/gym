import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym/core/theme/colors.dart';
import 'package:gym/core/theme/styles.dart';

class MembersAddMembersButton extends StatelessWidget {
  const MembersAddMembersButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 15, 35, 0),
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: ColorsManegar.mainOrange,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        onPressed: () {},
        child: Row(
          children: [
            Icon(Icons.add, color: ColorsManegar.backgroundcolor),
            SizedBox(width: 8.w),
            Text(
              "Add Member",
              style: TextStyle(color: ColorsManegar.backgroundcolor),
            ),
          ],
        ),
      ),
    );
  }
}
