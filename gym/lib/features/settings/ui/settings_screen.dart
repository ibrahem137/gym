import 'package:flutter/material.dart';
import 'package:gym/core/theme/colors.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManegar.backgroundcolor,

      body: Center(child: Text('settings screen')),
    );
  }
}
