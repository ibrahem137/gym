import 'package:flutter/material.dart';
import 'package:gym/core/theme/colors.dart';
import 'package:gym/features/trainers/data/list_trainers_model.dart';
import 'package:gym/features/trainers/ui/widgets/trainer_card.dart';

class TrainersScreen extends StatelessWidget {
  TrainersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManegar.backgroundcolor,
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: MediaQuery.of(context).size.width > 600 ? 3 : 2,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
          childAspectRatio: 1.2,
        ),
        padding: const EdgeInsets.symmetric(vertical: 16),
        itemCount: trainers.length,
        itemBuilder: (context, index) {
          return TrainerCard(trainer: trainers[index]);
        },
      ),
    );
  }
}
