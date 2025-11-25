import 'package:flutter/material.dart';
import 'package:gym/core/theme/colors.dart';
import 'package:gym/features/dashboard/ui/widgets/cards/dashboard_info_card.dart';

class BuildInfoCardsRow extends StatelessWidget {
  const BuildInfoCardsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Expanded(
          child: DashboardInfoCard(
            title: 'Total Active Members',
            value: '1,248',
            icon: Icons.people_alt_outlined,
            iconColor: ColorsManegar.semewhite,
            avatarColor: ColorsManegar.blueAccent,
          ),
        ),
        Expanded(
          child: DashboardInfoCard(
            title: 'Expiring Soon',
            value: '43',
            icon: Icons.error_outline_outlined,
            iconColor: ColorsManegar.semewhite,
            avatarColor: ColorsManegar.orangeAccent,
          ),
        ),
        Expanded(
          child: DashboardInfoCard(
            title: 'New Members This Month',
            value: '156',
            icon: Icons.person_add_alt,
            iconColor: ColorsManegar.semewhite,
            avatarColor: ColorsManegar.greenAccent,
          ),
        ),
        Expanded(
          child: DashboardInfoCard(
            title: 'Monthly Revenue',
            value: '\$42,300',
            icon: Icons.attach_money_outlined,
            iconColor: ColorsManegar.semewhite,
            avatarColor: ColorsManegar.purpleAccent,
          ),
        ),
      ],
    );
  }
}
