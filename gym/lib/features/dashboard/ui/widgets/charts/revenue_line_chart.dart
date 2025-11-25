import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:gym/core/theme/colors.dart';
import 'package:gym/core/theme/styles.dart';
import 'package:gym/features/dashboard/ui/widgets/charts/chart_card_container.dart';

class RevenueLineChart extends StatelessWidget {
  static const List<FlSpot> _revenueData = [
    FlSpot(0, 38000),
    FlSpot(1, 40000),
    FlSpot(2, 20000),
    FlSpot(3, 45000),
    FlSpot(4, 50000),
    FlSpot(5, 30000),
  ];
  static const List<String> _months = [
    'Jan',
    'Feb',
    'Mar',
    'Apr',
    'May',
    'Jun',
  ];

  const RevenueLineChart({super.key});

  @override
  Widget build(BuildContext context) {
    return ChartCardContainer(
      title: 'Monthly Revenue',
      chart: LineChart(_buildLineChartData()),
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
        if (value % 15000 == 0) {
          return Text(
            '${(value / 1000).toInt()}k',
            style: TextStyles.font10Grey,
          );
        }
        return const SizedBox.shrink();
      },
    );
  }

  LineChartData _buildLineChartData() {
    return LineChartData(
      minY: 15000,
      maxY: 60000,
      gridData: const FlGridData(show: false),
      borderData: FlBorderData(
        show: true,
        border: Border.all(
          color: Colors.grey.shade300,
          width: 1,
        ),
      ),
      titlesData: FlTitlesData(
        show: true,
        rightTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        topTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        bottomTitles: AxisTitles(
          sideTitles: _buildBottomTitles(),
        ),
        leftTitles: AxisTitles(
          sideTitles: _buildLeftTitles(),
        ),
      ),
      lineBarsData: [
        LineChartBarData(
          spots: _revenueData,
          isCurved: false,
          barWidth: 3,
          color: ColorsManegar.black,
          dotData: const FlDotData(show: true),
          belowBarData: BarAreaData(show: false),
        ),
      ],
    );
  }
}
