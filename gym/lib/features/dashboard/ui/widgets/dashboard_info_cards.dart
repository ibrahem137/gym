import 'package:flutter/material.dart';
import 'package:gym/core/theme/styles.dart';

class DashboardInfoCards extends StatelessWidget {
  final String title;
  final String value;
  final IconData icon;
  final Color iconColor;

  const DashboardInfoCards({
    super.key,
    required this.title,
    required this.value,
    required this.icon,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title, style: TextStyles.font14grey600),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment:
                  MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  value,
                  style: TextStyles.font24Blackw400
                      .copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
                Icon(icon, color: iconColor, size: 28),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
