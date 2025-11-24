import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym/core/theme/colors.dart';
import 'package:gym/features/dashboard/ui/widgets/dashboard_info_cards.dart';

class DashboardScreem extends StatelessWidget {
  const DashboardScreem({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManegar.backgroundcolor,
      body: Column(
        children: [
          SizedBox(height: 20.sp),
          Row(
            mainAxisAlignment:
                MainAxisAlignment.spaceBetween,
            children: [
              DashboardInfoCards(
                title: 'Total Active Members',
                value: '1,248',
                icon: Icons.people_alt_outlined,
                iconColor: ColorsManegar.semewhite,
                avatarColor: ColorsManegar.blueAccent,
              ),
              DashboardInfoCards(
                title: 'Expiring Soon',
                value: '43',
                icon: Icons.error_outline_outlined,
                iconColor: ColorsManegar.semewhite,
                avatarColor: ColorsManegar.orangeAccent,
              ),
              DashboardInfoCards(
                title: 'New Members This Month',
                value: '156',
                icon: Icons.person_add_alt,
                iconColor: ColorsManegar.semewhite,
                avatarColor: ColorsManegar.greenAccent,
              ),
              DashboardInfoCards(
                title: 'Monthly Revenue',
                value: '\$42,300',
                icon: Icons.attach_money_outlined,
                iconColor: ColorsManegar.semewhite,
                avatarColor: ColorsManegar.purpleAccent,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
