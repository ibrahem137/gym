import 'package:flutter/material.dart';
import 'package:gym/core/theme/colors.dart';

class CheckinScreen extends StatelessWidget {
  const CheckinScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManegar.backgroundcolor,

      body: Center(child: Text('check in screen')),
    );
  }
}
