import 'package:flutter/material.dart';
import 'package:gym/core/theme/styles.dart';
import 'package:gym/features/trainers/data/trainers_model.dart';

class ImageTrainer extends StatelessWidget {
  const ImageTrainer({super.key, required this.trainer});
  final TrainerModel trainer;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 28,
      backgroundColor: Colors.red.shade100,
      child: Text(trainer.initials, style: TextStyles.font18whitebold),
    );
  }
}
