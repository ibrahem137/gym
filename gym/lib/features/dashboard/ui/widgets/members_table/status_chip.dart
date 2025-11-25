import 'package:flutter/material.dart';
import 'package:gym/core/theme/colors.dart';
import 'package:gym/core/theme/styles.dart';

enum MemberStatus { active, nearExpiry, expired }

class StatusChip extends StatelessWidget {
  final MemberStatus status;

  const StatusChip({super.key, required this.status});

  Color get _backgroundColor {
    switch (status) {
      case MemberStatus.active:
        return ColorsManegar
            .green; // افترض أن لديك لون أخضر فاتح مناسب
      case MemberStatus.nearExpiry:
        return ColorsManegar
            .orange; // افترض أن لديك لون برتقالي فاتح مناسب
      case MemberStatus.expired:
        return ColorsManegar.red; // اللون الأسود للخارج
    }
  }

  String get _text {
    switch (status) {
      case MemberStatus.active:
        return 'Active';
      case MemberStatus.nearExpiry:
        return 'Near Expiry';
      case MemberStatus.expired:
        return 'Expired';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 8,
        vertical: 4,
      ),
      decoration: BoxDecoration(
        color: _backgroundColor, // خلفية فاتحة
        borderRadius: BorderRadius.circular(5),
      ),
      child: Text(_text, style: TextStyles.font10Whitebold),
    );
  }
}
