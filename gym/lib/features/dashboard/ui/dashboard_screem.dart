import 'package:flutter/material.dart';
import 'package:gym/core/theme/colors.dart';

class DashboardScreem extends StatelessWidget {
  const DashboardScreem({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManegar.backgroundcolor,
      body: Center(child: Text('dashboard screen')),
    );
  }
}
