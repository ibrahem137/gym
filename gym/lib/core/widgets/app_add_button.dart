import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym/core/theme/colors.dart';
import 'package:gym/core/theme/styles.dart';

class MembersAddMembersButton extends StatelessWidget {
  final String? text;
  final VoidCallback? onPressed;
  const MembersAddMembersButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

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
        onPressed: onPressed,
        child: Row(
          children: [
            Icon(Icons.add, color: ColorsManegar.backgroundcolor),
            SizedBox(width: 8.w),
            Text(text!, style: TextStyles.font13white800),
          ],
        ),
      ),
    );
  }
}
//