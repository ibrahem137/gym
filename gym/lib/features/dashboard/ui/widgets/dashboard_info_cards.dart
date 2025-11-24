import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym/core/theme/styles.dart';

class DashboardInfoCards extends StatefulWidget {
  final String title;
  final String value;
  final IconData icon;
  final Color iconColor;
  final Color avatarColor;

  const DashboardInfoCards({
    super.key,
    required this.title,
    required this.value,
    required this.icon,
    required this.iconColor,
    required this.avatarColor,
  });

  @override
  State<DashboardInfoCards> createState() =>
      _DashboardInfoCardsState();
}

class _DashboardInfoCardsState
    extends State<DashboardInfoCards> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        curve: Curves.easeOut,
        width: 300.sp,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow:
              _isHovered
                  ? [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 20,
                      spreadRadius: 2,
                      offset: Offset(0, 8),
                    ),
                  ]
                  : [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 8,
                      spreadRadius: 1,
                      offset: Offset(0, 3),
                    ),
                  ],
        ),
        padding: EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              widget.title,
              style: TextStyles.font10Blackbold,
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment:
                  MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.value,
                  style: TextStyles.font24Blackw400
                      .copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
                CircleAvatar(
                  backgroundColor: widget.avatarColor,
                  child: Icon(
                    widget.icon,
                    color: widget.iconColor,
                    size: 28,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
