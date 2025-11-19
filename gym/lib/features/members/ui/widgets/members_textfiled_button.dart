import 'package:flutter/material.dart';
import 'package:gym/core/theme/app_shadow.dart';

class MembersTextfiledButton extends StatelessWidget {
  final String? hintText;
  final IconData? icon;
  final VoidCallback? onPressed;
  const MembersTextfiledButton({
    super.key,
    required this.hintText,
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),

        boxShadow: [AppShadows.outerList[0]],
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          side: BorderSide(color: Colors.grey.shade300),
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        ),
        onPressed: onPressed,
        child: Row(
          children: [
            Icon(icon, size: 20),
            SizedBox(width: 4),
            Text(
              hintText!,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }
}
