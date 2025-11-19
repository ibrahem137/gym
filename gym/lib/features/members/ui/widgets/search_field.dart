import 'package:flutter/material.dart';
import 'package:gym/core/theme/app_shadow.dart';
import 'package:gym/core/theme/styles.dart';

class SearchField extends StatelessWidget {
  const SearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),

          boxShadow: [AppShadows.outerList[0]],
        ),
        child: TextField(
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.search, color: Colors.grey[600]),

            border: InputBorder.none,
            hintText: 'Search members by name, email, or phone...',
            hintStyle: TextStyles.font14darkgraynormal,
            contentPadding: EdgeInsets.fromLTRB(16, 0, 16, 12),
          ),
        ),
      ),
    );
  }
}
