import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:gym/core/theme/colors.dart';
import 'package:gym/core/theme/styles.dart';

class NewSubscriptions extends StatelessWidget {
  const NewSubscriptions({super.key});

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
        shape: RoundedRectangleBorder(
          side: BorderSide(color: ColorsManegar.black),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'New Subscriptions',
                style: TextStyles.font16Blackbold,
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: 300,
                child: BarChart(
                  BarChartData(
                    titlesData: FlTitlesData(
                      leftTitles: AxisTitles(
                        sideTitles: SideTitles(
                          showTitles: true,
                          reservedSize: 45,
                          getTitlesWidget: (value, meta) {
                            if (value % 10 == 0) {
                              return Text(
                                '${(value).toInt()}',
                                style:
                                    TextStyles.font10Grey,
                              );
                            }
                            return Container();
                          },
                        ),
                      ),
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
                    ),
                    barGroups: [
                      BarChartGroupData(
                        x: 0,
                        barRods: [
                          BarChartRodData(
                            toY: 100,
                            color: ColorsManegar.black,
                            width: 50,
                            borderRadius: BorderRadius.all(
                              Radius.zero,
                            ),
                          ),
                        ],
                      ),
                      BarChartGroupData(
                        x: 1,
                        barRods: [
                          BarChartRodData(
                            toY: 130,
                            color: ColorsManegar.black,
                            width: 50,
                            borderRadius: BorderRadius.all(
                              Radius.zero,
                            ),
                          ),
                        ],
                      ),
                      BarChartGroupData(
                        x: 2,
                        barRods: [
                          BarChartRodData(
                            toY: 120,
                            color: ColorsManegar.black,
                            width: 50,
                            borderRadius: BorderRadius.all(
                              Radius.zero,
                            ),
                          ),
                        ],
                      ),
                      BarChartGroupData(
                        x: 3,
                        barRods: [
                          BarChartRodData(
                            toY: 140,
                            color: ColorsManegar.black,
                            width: 50,
                            borderRadius: BorderRadius.all(
                              Radius.zero,
                            ),
                          ),
                        ],
                      ),
                      BarChartGroupData(
                        x: 4,
                        barRods: [
                          BarChartRodData(
                            toY: 160,
                            color: ColorsManegar.black,
                            width: 50,
                            borderRadius: BorderRadius.all(
                              Radius.zero,
                            ),
                          ),
                        ],
                      ),
                      BarChartGroupData(
                        x: 5,
                        barRods: [
                          BarChartRodData(
                            toY: 175,
                            color: ColorsManegar.black,
                            width: 50,
                            borderRadius: BorderRadius.all(
                              Radius.zero,
                            ),
                          ),
                        ],
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
