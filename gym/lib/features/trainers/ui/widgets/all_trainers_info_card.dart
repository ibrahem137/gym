import 'package:flutter/material.dart';
import 'package:gym/core/theme/app_shadow.dart';
import 'package:gym/core/theme/styles.dart';
import 'package:gym/features/trainers/data/trainers_info_model.dart';

class AllTrainersInfoCard extends StatelessWidget {
  final TrainersInfoModel trainerInfo;
  const AllTrainersInfoCard({super.key, required this.trainerInfo});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 12, horizontal: 18),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(28),
        boxShadow: [AppShadows.bigOuterList[0]],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            trainerInfo.head,
            style: TextStyles.font13Blackw600,
            textAlign: TextAlign.start,
          ),
          Text(
            trainerInfo.buttom,
            style: TextStyles.font28Blackboldstart,
            textAlign: TextAlign.start,
          ),
        ],
      ),
    );
  }
}
