import 'package:flutter/material.dart';
import 'package:gym/core/theme/colors.dart';
import 'package:gym/core/widgets/home_texts_headers.dart';
import 'package:gym/features/dashboard/ui/widgets/members_table/members_table_card.dart';
import 'package:gym/features/members/ui/widgets/members_search_filed.dart';

class MembersScreen extends StatelessWidget {
  const MembersScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManegar.backgroundcolor,
      body: ListView(
        children: [
          //----------  Header ----------
          HomeTextsHeaders(
            headerText: "Members",
            subHeaderText:
                "Manage your gym members and memberships",
          ),
          SizedBox(height: 30),
          MembersSearchFiled(),
          SizedBox(height: 30),

          //----------  Card ----------
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 30.0,
            ),
            child: MembersTableCard(),
          ),
        ],
      ),
    );
  }
}
