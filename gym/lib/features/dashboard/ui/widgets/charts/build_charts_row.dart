import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym/features/dashboard/ui/widgets/charts/revenue_line_chart.dart';
import 'package:gym/features/dashboard/ui/widgets/charts/subscriptions_bar_chart.dart';

class BuildChartsRow extends StatelessWidget {
  const BuildChartsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Expanded(child: RevenueLineChart()),
        SizedBox(width: 20.w),
        const Expanded(child: SubscriptionsBarChart()),
      ],
    );
  }
}
