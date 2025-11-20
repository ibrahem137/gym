import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym/core/theme/app_shadow.dart';
import 'package:gym/core/theme/styles.dart';
import 'package:gym/features/trainers/data/trainers_model.dart';
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
              CircleAvatar(
                radius: 28,
                backgroundColor: Colors.red.shade100,
                child: Text(
                  trainer.initials,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(width: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    trainer.name,
                    style: const TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    trainer.specialty,
                    style: const TextStyle(fontSize: 13, color: Colors.black54),
                  ),
                ],
              ),
            ],
          ),

          const SizedBox(height: 20),

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

          const SizedBox(height: 16),

          // rating
          const SizedBox(height: 16),

          // email + phone
          Row(
            children: [
              const Icon(Icons.email_outlined, size: 18),
              const SizedBox(width: 8),
              Text(trainer.email),
            ],
          ),
          const SizedBox(height: 6),
          Row(
            children: [
              const Icon(Icons.phone, size: 18),
              const SizedBox(width: 8),
              Text(trainer.phone),
            ],
          ),

          const SizedBox(height: 18),

          // buttons
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 28,
                    vertical: 12,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                onPressed: () {},
                child: const Text(
                  "View Profile",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 32,
                    vertical: 12,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                onPressed: () {},
                child: Text("Schedule", style: TextStyles.font13white800),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
