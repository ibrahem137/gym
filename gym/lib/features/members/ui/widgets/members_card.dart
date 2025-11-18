import 'package:flutter/material.dart';
import 'package:gym/features/members/data/member_model_listdata.dart';
import 'package:gym/features/members/ui/widgets/members_headar_screen.dart';
import 'package:gym/features/members/ui/widgets/one_mmeber_row.dart';

class MembersCard extends StatelessWidget {
  MembersCard({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MembersHeadarScreen(),

        const Divider(),

        Expanded(
          child: ListView.builder(
            itemCount: membersModelList.length,
            itemBuilder: (context, index) {
              return OneMemberRow(member: membersModelList[index]);
            },
          ),
        ),
      ],
    );
  }
}
