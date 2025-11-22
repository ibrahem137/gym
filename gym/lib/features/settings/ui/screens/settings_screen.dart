import 'package:flutter/material.dart';
import 'package:gym/core/theme/colors.dart';
import 'package:gym/features/settings/ui/widgets/settings_card.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManegar.backgroundcolor,
      body: Column(children: [SettingsCard()]),
    );
  }
}
