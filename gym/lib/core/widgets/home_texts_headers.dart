import 'package:flutter/material.dart';
import 'package:gym/core/theme/styles.dart';

class HomeTextsHeaders extends StatelessWidget {
  final String headerText;
  final String subHeaderText;
  const HomeTextsHeaders({
    super.key,
    required this.headerText,
    required this.subHeaderText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: [
              Text(
                headerText,
                style: TextStyles.font28Blackboldstart,
                textAlign: TextAlign.start,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
          child: Row(
            children: [
              Text(
                subHeaderText,
                style: TextStyles.font16Blackw500,
                textAlign: TextAlign.start,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
