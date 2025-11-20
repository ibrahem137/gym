import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym/core/theme/app_shadow.dart';
import 'package:gym/core/theme/colors.dart';
import 'package:gym/core/theme/styles.dart';
import 'package:gym/core/widgets/app_text_button.dart';
import 'package:gym/features/trainers/data/trainers_model.dart';
import 'package:gym/features/trainers/ui/widgets/image_trainer.dart';
import 'package:gym/features/trainers/ui/widgets/trainer_info.dart';

class TrainerCard extends StatelessWidget {
  final TrainerModel trainer;

  const TrainerCard({super.key, required this.trainer});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(28),
        boxShadow: [AppShadows.bigOuterList[0]],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // header
          Row(
            children: [
              ImageTrainer(trainer: trainer),

              SizedBox(width: 16.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(trainer.name, style: TextStyles.font17Blackw600),
                  Text(
                    trainer.specialty,
                    style: const TextStyle(fontSize: 13, color: Colors.black54),
                  ),
                ],
              ),
            ],
          ),

          SizedBox(height: 20.h),

          // info tiles
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TrainerInfoTile(
                title: "Experience",
                value: "${trainer.experience} years",
              ),
              TrainerInfoTile(title: "Clients", value: "${trainer.clients}"),
            ],
          ),

          SizedBox(height: 22.h),

          // email + phone
          Row(
            children: [
              const Icon(Icons.email_outlined, size: 18),
              SizedBox(width: 8.w),
              Text(trainer.email),
            ],
          ),
          SizedBox(height: 6.h),
          Row(
            children: [
              const Icon(Icons.phone, size: 18),
              SizedBox(width: 8.w),
              Text(trainer.phone),
            ],
          ),

          SizedBox(height: 18.h),

          // buttons
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppTextButton(
                buttonText: "View Profile",
                textStyle: TextStyles.font13Blackw600,
                onPressed: () {},
                borderRadius: 20,
                buttonWidth: 130.w,
                buttonHeight: 25.h,
                horizontalPadding: 28,
                verticalPadding: 12,
                backgroundColor: ColorsManegar.semewhite,
              ),

              AppTextButton(
                buttonText: "Schedule",
                textStyle: TextStyles.font14white600,
                onPressed: () {},
                buttonWidth: 110.w,
                buttonHeight: 25.h,
                borderRadius: 20,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
