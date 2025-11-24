import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:gym/core/theme/colors.dart';
import 'package:gym/core/theme/styles.dart';

class DashboardRevenueChart extends StatelessWidget {
  static const List<FlSpot> revenueData = [
    FlSpot(0, 38000),
    FlSpot(1, 40000),
    FlSpot(2, 20000),
    FlSpot(3, 45000),
    FlSpot(4, 50000),
    FlSpot(5, 30000),
  ];
  const DashboardRevenueChart({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 8,
            spreadRadius: 1,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Card(
        color: ColorsManegar.backgroundcolor,
        elevation: 2,
        surfaceTintColor: ColorsManegar.backgroundcolor,
        shape: RoundedRectangleBorder(
          side: BorderSide(color: ColorsManegar.black),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Monthly Revenue',
                style: TextStyles.font16Blackbold,
              ),
              SizedBox(height: 20),
              SizedBox(
                height: 300,
                child: LineChart(
                  LineChartData(
                    minY: 15000,
                    maxY: 60000,
                    gridData: FlGridData(show: false),
                    titlesData: FlTitlesData(
                      show: true,
                      rightTitles: AxisTitles(
                        sideTitles: SideTitles(
                          showTitles: false,
                        ),
                      ),
                      topTitles: AxisTitles(
                        sideTitles: SideTitles(
                          showTitles: false,
                        ),
                      ),
                      bottomTitles: AxisTitles(
                        sideTitles: SideTitles(
                          showTitles: true,
                          reservedSize: 30,
                          getTitlesWidget: (value, meta) {
                            const months = [
                              'Jan',
                              'Feb',
                              'Mar',
                              'Apr',
                              'May',
                              'Jun',
                              'Jul',
                              'Aug',
                              'Sept',
                              'Oct',
                              'Nov',
                              'Dec',
                            ];
                            if (value.toInt() >= 0 &&
                                value.toInt() <
                                    months.length) {
                              return SideTitleWidget(
                                axisSide: meta.axisSide,
                                space: 8,
                                child: Text(
                                  months[value.toInt()],
                                  style:
                                      TextStyles.font10Grey,
                                ),
                              );
                            }
                            return Container();
                          },
                        ),
                      ),
                      leftTitles: AxisTitles(
                        sideTitles: SideTitles(
                          showTitles: true,
                          reservedSize: 45,
                          getTitlesWidget: (value, meta) {
                            if (value % 15000 == 0) {
                              return Text(
                                '${(value / 1000).toInt()}k',
                                style:
                                    TextStyles.font10Grey,
                              );
                            }
                            return Container();
                          },
                        ),
                      ),
                    ),
                    borderData: FlBorderData(
                      show: true,
                      border: Border.all(
                        color: Colors.grey.shade300,
                        width: 1,
                      ),
                    ),
                    lineBarsData: [
                      LineChartBarData(
                        spots: revenueData,
                        isCurved: false,
                        barWidth: 3,
                        color: ColorsManegar.black,
                        dotData: const FlDotData(
                          show: true,
                        ),
                        belowBarData: BarAreaData(
                          show: false,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
