import 'package:flutter/material.dart';
import 'package:gym/core/theme/status_color.dart';
import 'package:gym/core/theme/styles.dart';
import 'package:gym/features/members/data/member_model_class.dart';
import 'package:gym/features/members/ui/widgets/member_image.dart';

class OneMemberRow extends StatelessWidget {
  final MemberModelClass member;
  const OneMemberRow({super.key, required this.member});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 16),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Row(
              children: [
                MemberImage(memberName: member.name),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(member.name, style: TextStyles.font16Blackw600),
                    Text("ID: ${member.id}", style: TextStyles.font13Blackw600),
                  ],
                ),
              ],
            ),
          ),

          // ---------------- CONTACT ----------------
          Expanded(
            flex: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(member.email, style: TextStyles.font13Blackw600),
                Text(member.phone, style: TextStyles.font13Blackw600),
              ],
            ),
          ),

          // ---------------- STATUS ----------------
          Expanded(
            flex: 2,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              decoration: BoxDecoration(
                color: getStatusColor(),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                member.status,
                textAlign: TextAlign.center,
                style: TextStyles.font16white800,
              ),
            ),
          ),

          // ---------------- JOIN DATE ----------------
          Expanded(
            flex: 2,
            child: Text(member.joinDate, style: TextStyles.font13Blackw600),
          ),

          // ---------------- EXPIRY DATE ----------------
          Expanded(
            flex: 2,
            child: Text(member.expiryDate, style: TextStyles.font13Blackw600),
          ),

          // ---------------- ACTIONS ----------------
          Expanded(
            flex: 1,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_vert),
            ),
          ),
        ],
      ),
    );
  }
}
