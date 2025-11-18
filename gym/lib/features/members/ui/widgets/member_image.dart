import 'package:flutter/material.dart';

class MemberImage extends StatelessWidget {
  final String memberName;
  const MemberImage({super.key, required this.memberName});

  @override
  Widget build(BuildContext context) {
    final initials =
        (memberName.isNotEmpty)
            ? memberName
                .substring(0, memberName.length >= 2 ? 2 : 1)
                .toUpperCase()
            : "?";
    return CircleAvatar(
      radius: 25,
      backgroundColor: Colors.red.shade100,
      child: Text(
        initials,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }
}
