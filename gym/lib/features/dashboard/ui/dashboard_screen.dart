import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym/core/theme/colors.dart';
import 'package:gym/features/dashboard/ui/widgets/cards/build_info_cards_row.dart';
import 'package:gym/features/dashboard/ui/widgets/charts/build_charts_row.dart';
import 'package:gym/features/dashboard/ui/widgets/members_table/members_table_card.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManegar.backgroundcolor,
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
          horizontal: 20.w,
          vertical: 20.h,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            BuildInfoCardsRow(),
            SizedBox(height: 50.h),
            BuildChartsRow(),
            SizedBox(height: 50.h),
            MembersTableCard(),
          ],
        ),
      ),
    );
  }
}
