import 'package:flutter/material.dart';
import 'package:gym/core/theme/styles.dart';
import 'package:gym/features/members/ui/widgets/one_member_card.dart';

class MembersCard extends StatelessWidget {
  const MembersCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemBuilder: (context, index) {
          [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('Member', style: TextStyles.font13Blackw600),
                Text('Contact', style: TextStyles.font13Blackw600),
                Text('Status', style: TextStyles.font13Blackw600),
                Text('Join Date', style: TextStyles.font13Blackw600),
                Text('Expiry Date', style: TextStyles.font13Blackw600),
                Text('Actions', style: TextStyles.font13Blackw600),
              ],
            ),
            OneMemberCard(),
          ];
        },
      ),
    );
  }
}
