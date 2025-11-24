import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym/core/theme/colors.dart';
import 'package:gym/core/theme/styles.dart';
import 'package:gym/core/widgets/app_add_button.dart';
import 'package:gym/features/trainers/data/_list_trainers_info_model.dart';
import 'package:gym/features/trainers/data/list_trainers_model.dart';
import 'package:gym/features/trainers/ui/widgets/all_trainers_info_card.dart';
import 'package:gym/features/trainers/ui/widgets/trainer_card.dart';

class TrainersScreen extends StatelessWidget {
  const TrainersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManegar.backgroundcolor,
      body: ListView(
        //  mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [
                Text(
                  "Trainers",
                  style: TextStyles.font28Blackboldstart,
                  textAlign: TextAlign.start,
                ),
                MembersAddMembersButton(text: "Add trainer ", onPressed: () {}),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
            child: Row(
              children: [
                Text(
                  "Manage your gym trainers and staff",
                  style: TextStyles.font16Blackw500,
                  textAlign: TextAlign.start,
                ),
              ],
            ),
          ),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 30,
              mainAxisSpacing: 3,
              childAspectRatio: 3.7,
            ),
            padding: const EdgeInsets.fromLTRB(0, 33, 0, 0),
            itemCount: trainersinfo.length,
            itemBuilder: (context, index) {
              return AllTrainersInfoCard(trainerInfo: trainersinfo[index]);
            },
          ),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: MediaQuery.of(context).size.width > 600.w ? 3 : 2,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
              childAspectRatio: 1.3,
            ),
            padding: const EdgeInsets.symmetric(vertical: 16),
            itemCount: trainers.length,
            itemBuilder: (context, index) {
              return TrainerCard(trainer: trainers[index]);
            },
          ),
        ],
      ),
    );
  }
}
