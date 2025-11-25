import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym/core/theme/colors.dart';
import 'package:gym/features/dashboard/ui/widgets/dashboard_info_card.dart';
import 'package:gym/features/dashboard/ui/widgets/revenue_line_chart.dart';
import 'package:gym/features/dashboard/ui/widgets/subscriptions_bar_chart.dart';

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
            _buildInfoCardsRow(),
            SizedBox(height: 50.h),
            _buildChartsRow(),
          ],
        ),
      ),
    );
  }

  Widget _buildChartsRow() {
    // Note: The logic here assumes a large screen layout (desktop/web)
    // where the two charts fit side-by-side.
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Expanded(child: RevenueLineChart()),
        SizedBox(width: 20.w),
        const Expanded(child: SubscriptionsBarChart()),
      ],
    );
  }

  Widget _buildInfoCardsRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Expanded(
          child: DashboardInfoCard(
            title: 'Total Active Members',
            value: '1,248',
            icon: Icons.people_alt_outlined,
            iconColor: ColorsManegar.semewhite,
            avatarColor: ColorsManegar.blueAccent,
          ),
        ),
        Expanded(
          child: DashboardInfoCard(
            title: 'Expiring Soon',
            value: '43',
            icon: Icons.error_outline_outlined,
            iconColor: ColorsManegar.semewhite,
            avatarColor: ColorsManegar.orangeAccent,
          ),
        ),
        Expanded(
          child: DashboardInfoCard(
            title: 'New Members This Month',
            value: '156',
            icon: Icons.person_add_alt,
            iconColor: ColorsManegar.semewhite,
            avatarColor: ColorsManegar.greenAccent,
          ),
        ),
        Expanded(
          child: DashboardInfoCard(
            title: 'Monthly Revenue',
            value: '\$42,300',
            icon: Icons.attach_money_outlined,
            iconColor: ColorsManegar.semewhite,
            avatarColor: ColorsManegar.purpleAccent,
          ),
        ),
      ],
    );
  }
}
