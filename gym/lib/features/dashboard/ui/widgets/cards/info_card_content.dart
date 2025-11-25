import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym/core/theme/styles.dart';

class InfoCardContent extends StatelessWidget {
  final String title;
  final String value;
  final IconData icon;
  final Color iconColor;
  final Color avatarColor;

  const InfoCardContent({
    super.key,
    required this.title,
    required this.value,
    required this.icon,
    required this.iconColor,
    required this.avatarColor,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyles.font10Blackbold,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        SizedBox(height: 8.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              value,
              style: TextStyles.font24Blackw400.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            CircleAvatar(
              backgroundColor: avatarColor,
              child: Icon(icon, color: iconColor, size: 28),
            ),
          ],
        ),
      ],
    );
  }
}
