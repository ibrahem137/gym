import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:gym/core/theme/colors.dart';
import 'package:gym/core/theme/styles.dart';
import 'package:gym/features/dashboard/ui/widgets/chart_card_container.dart';

class SubscriptionsBarChart extends StatelessWidget {
  static const List<String> _months = [
    'Jan',
    'Feb',
    'Mar',
    'Apr',
    'May',
    'Jun',
  ];
  static const double _barWidth = 50;

  const SubscriptionsBarChart({super.key});

  @override
  Widget build(BuildContext context) {
    return ChartCardContainer(
      title: 'New Subscriptions',

      chart: BarChart(_buildBarChartData()),
    );
  }

  BarChartData _buildBarChartData() {
    return BarChartData(
      titlesData: FlTitlesData(
        leftTitles: AxisTitles(
          sideTitles: _buildLeftTitles(),
        ),
        rightTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        topTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        bottomTitles: AxisTitles(
          sideTitles: _buildBottomTitles(),
        ),
      ),
      barGroups: _buildBarGroups(),
      gridData: const FlGridData(
        show: false,
      ), // Assuming no grid is intended
      borderData: FlBorderData(
        show: true,
        border: Border.all(
          color: Colors.grey.shade300,
          width: 1,
        ),
      ),
    );
  }

  List<BarChartGroupData> _buildBarGroups() {
    const List<double> subscriptionCounts = [
      100,
      130,
      120,
      140,
      160,
      175,
    ];

    return List.generate(
      subscriptionCounts.length,
      (i) => BarChartGroupData(
        x: i,
        barRods: [
          BarChartRodData(
            toY: subscriptionCounts[i],
            color: ColorsManegar.black,
            width: _barWidth,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(5),
              topRight: Radius.circular(5),
            ), // Added slight rounding for better appearance
          ),
        ],
      ),
    );
  }

  SideTitles _buildBottomTitles() {
    return SideTitles(
      showTitles: true,
      reservedSize: 30,
      getTitlesWidget: (value, meta) {
        final index = value.toInt();
        if (index >= 0 && index < _months.length) {
          return SideTitleWidget(
            axisSide: meta.axisSide,
            space: 8,
            child: Text(
              _months[index],
              style: TextStyles.font10Grey,
            ),
          );
        }
        return const SizedBox.shrink();
      },
    );
  }

  SideTitles _buildLeftTitles() {
    return SideTitles(
      showTitles: true,
      reservedSize: 45,
      getTitlesWidget: (value, meta) {
        if (value % 10 == 0) {
          return Text(
            '${value.toInt()}',
            style: TextStyles.font10Grey,
          );
        }
        return const SizedBox.shrink();
      },
    );
  }
}
