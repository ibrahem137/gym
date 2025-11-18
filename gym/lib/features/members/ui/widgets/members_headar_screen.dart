import 'package:flutter/material.dart';
import 'package:gym/core/theme/styles.dart';

class MembersHeadarScreen extends StatelessWidget {
  const MembersHeadarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Text("Member", style: TextStyles.font13Blackw600),
          ),
          Expanded(
            flex: 3,
            child: Text("Contact", style: TextStyles.font13Blackw600),
          ),

          Expanded(
            flex: 2,
            child: Text("Status", style: TextStyles.font13Blackw600),
          ),
          Expanded(
            flex: 2,
            child: Text("Join Date", style: TextStyles.font13Blackw600),
          ),
          Expanded(
            flex: 2,
            child: Text("Expiry Date", style: TextStyles.font13Blackw600),
          ),
          Expanded(
            flex: 1,
            child: Text("Actions", style: TextStyles.font13Blackw600),
          ),
        ],
      ),
    );
  }
}
