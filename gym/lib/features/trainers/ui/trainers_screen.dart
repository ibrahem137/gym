import 'package:flutter/material.dart';
import 'package:gym/core/theme/colors.dart';

class TrainersScreen extends StatelessWidget {
  const TrainersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManegar.backgroundcolor,

      body: Center(child: Text('trainers screen')),
    );
  }
}
