import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym/core/theme/colors.dart';
import 'package:gym/core/theme/styles.dart';
import 'package:gym/gen/assets.gen.dart';

class OneMemberCard extends StatelessWidget {
  const OneMemberCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          SizedBox(width: 40),
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
            child: Image.asset(
              Assets.images.gymproLogo.path,
              fit: BoxFit.cover,
              width: 75.w,
              height: 75.h,
            ),
          ),
          Column(
            children: [
              Text('John Doe', style: TextStyles.font16Blackw600),
              Text('ID: 1', style: TextStyles.font13Blackw600),
            ],
          ),
          SizedBox(width: 140),
          Column(
            children: [
              Text('john@example.com', style: TextStyles.font13Blackw600),
              Text('+1234567890', style: TextStyles.font13Blackw600),
            ],
          ),
          SizedBox(width: 170),

          Container(
            height: 30.h,
            width: 55.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: ColorsManegar.mainOrange,
            ),
            child: Text(
              'Active',
              style: TextStyles.font16white800,
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(width: 185),

          //SizedBox(width: 30),
          Text('2024-01-15', style: TextStyles.font13Blackw600),
          SizedBox(width: 200),

          Text('2024-01-15', style: TextStyles.font13Blackw600),

          SizedBox(width: 200),
          TextButton(onPressed: () {}, child: Text(":")),
        ],
      ),
    );
  }
}
