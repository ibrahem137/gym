import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym/core/theme/app_shadow.dart';
import 'package:gym/core/theme/colors.dart';
import 'package:gym/features/members/ui/widgets/members_textfiled_button.dart';
import 'package:gym/features/members/ui/widgets/search_field.dart';

class MembersSearchFiled extends StatelessWidget {
  const MembersSearchFiled({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Container(
        width: double.infinity,
        height: 70.h,
        decoration: BoxDecoration(
          color: ColorsManegar.shadowColor,
          borderRadius: BorderRadius.circular(32),
          boxShadow: [AppShadows.bigOuterList[0]],
        ),
        child: Container(
          margin: const EdgeInsets.all(6),
          decoration: BoxDecoration(
            color: ColorsManegar.backgroundcolor,
            borderRadius: BorderRadius.circular(32),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            child: Row(
              children: [
                //----------  Search Field ----------
                SearchField(),

                SizedBox(width: 5.w),

                //----------  Filter & OK Button ----------
                MembersTextfiledButton(
                  hintText: 'Search',
                  icon: Icons.person_search_outlined,
                  onPressed: () {},
                ),
                SizedBox(width: 8),

                MembersTextfiledButton(
                  hintText: 'Filter',
                  icon: Icons.filter_alt_outlined,
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
