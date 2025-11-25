import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym/core/theme/app_shadow.dart';
import 'package:gym/features/dashboard/ui/widgets/cards/info_card_content.dart';

class DashboardInfoCard extends StatefulWidget {
  final String title;
  final String value;
  final IconData icon;
  final Color iconColor;
  final Color avatarColor;

  const DashboardInfoCard({
    super.key,
    required this.title,
    required this.value,
    required this.icon,
    required this.iconColor,
    required this.avatarColor,
  });

  @override
  State<DashboardInfoCard> createState() =>
      _DashboardInfoCardState();
}

class _DashboardInfoCardState
    extends State<DashboardInfoCard> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => _onHover(true),
      onExit: (_) => _onHover(false),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          curve: Curves.easeOut,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(
              15.r,
            ), // Use .r for radius scaling
            boxShadow:
                _isHovered
                    ? AppShadows.cardHoverList
                    : AppShadows.cardDefaultList,
          ),
          padding: EdgeInsets.all(30.sp),
          child: InfoCardContent(
            title: widget.title,
            value: widget.value,
            icon: widget.icon,
            iconColor: widget.iconColor,
            avatarColor: widget.avatarColor,
          ),
        ),
      ),
    );
  }

  void _onHover(bool isHovered) {
    setState(() {
      _isHovered = isHovered;
    });
  }
}
