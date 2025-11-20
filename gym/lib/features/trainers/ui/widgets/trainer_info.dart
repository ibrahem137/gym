import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym/core/theme/styles.dart';

class TrainerInfoTile extends StatelessWidget {
  final String title;
  final String value;

  const TrainerInfoTile({super.key, required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150.w,
      height: 95.h,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            textAlign: TextAlign.start,
            style: TextStyles.font13darkgrayw400,
          ),
          //  const SizedBox(height: 4),
          Text(value, style: TextStyles.font13Blackw600),
        ],
      ),
    );
  }
}
