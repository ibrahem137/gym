import 'package:flutter/material.dart';
import 'package:gym/core/theme/app_shadow.dart';
import 'package:gym/core/theme/colors.dart';
import 'package:gym/core/theme/styles.dart';
import 'package:gym/core/widgets/home_texts_headers.dart';
import 'package:gym/features/members/ui/widgets/members_card.dart';
import 'package:gym/features/members/ui/widgets/members_head_card.dart';
import 'package:gym/features/members/ui/widgets/members_search_filed.dart';
import 'package:gym/core/widgets/app_add_button.dart';

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
            subHeaderText: "Manage your gym members and memberships",
          ),
          SizedBox(height: 30),
          MembersSearchFiled(),

          //----------  Card ----------
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade300),
                color: ColorsManegar.backgroundcolor,
                borderRadius: BorderRadius.circular(20),
                boxShadow: AppShadows.bigOuterList,
              ),
              height: double.maxFinite,
              child: Column(
                //      mainAxisSize: MainAxisSize.min,
                children: [MembersHeadCard(), const Divider(), MembersCard()],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
