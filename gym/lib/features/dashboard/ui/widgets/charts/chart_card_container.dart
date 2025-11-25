import 'package:flutter/material.dart';
import 'package:gym/core/theme/app_shadow.dart';
import 'package:gym/core/theme/colors.dart';
import 'package:gym/core/theme/styles.dart';

class ChartCardContainer extends StatelessWidget {
  final String title;
  final Widget chart;
  final double height;

  const ChartCardContainer({
    super.key,
    required this.title,
    required this.chart,
    this.height = 300,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: AppShadows.chartShadowList,
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
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyles.font16Blackbold,
              ),
              const SizedBox(height: 20),
              SizedBox(height: height, child: chart),
            ],
          ),
        ),
      ),
    );
  }
}
