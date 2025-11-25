import 'package:flutter/material.dart';
import 'package:gym/core/theme/colors.dart';

import 'status_chip.dart'; // تأكد من استيراد الودجيت المساعدة

class MemberData {
  final String name;
  final String imageUrl;
  final String phone;
  final String plan;
  final String startDate;
  final String endDate;
  final String daysLeft;
  final MemberStatus status;

  const MemberData({
    required this.name,
    required this.imageUrl,
    required this.phone,
    required this.plan,
    required this.startDate,
    required this.endDate,
    required this.daysLeft,
    required this.status,
  });
}

class MemberRow extends StatelessWidget {
  final MemberData member;

  const MemberRow({super.key, required this.member});

  @override
  Widget build(BuildContext context) {
    // تحديد عرض كل عمود (استخدم Expanded للحصول على تخطيط مرن)
    const double avatarSize = 40;
    const TextStyle dataStyle = TextStyle(
      fontSize: 14,
      color: Colors.black87,
    );
    const SizedBox verticalDivider = SizedBox(height: 12);

    // الويدجيت المدمجة للاسم والصورة
    Widget nameWidget = Row(
      children: [
        CircleAvatar(
          radius: avatarSize / 2,
          backgroundImage: NetworkImage(member.imageUrl),
        ),
        const SizedBox(width: 10),
        Text(
          member.name,
          style: dataStyle.copyWith(
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );

    // استخدام Row و Expanded لتقسيم المساحة أفقياً
    return Column(
      children: [
        Row(
          children: [
            // 1. Member
            Expanded(flex: 2, child: nameWidget),
            // 2. Phone
            Expanded(
              flex: 1,
              child: Text(member.phone, style: dataStyle),
            ),
            // 3. Plan
            Expanded(
              flex: 1,
              child: Text(member.plan, style: dataStyle),
            ),
            // 4. Start Date
            Expanded(
              flex: 1,
              child: Text(
                member.startDate,
                style: dataStyle,
              ),
            ),
            // 5. End Date
            Expanded(
              flex: 1,
              child: Text(member.endDate, style: dataStyle),
            ),
            // 6. Days Left
            Expanded(
              flex: 1,
              child: Text(
                member.daysLeft,
                style: dataStyle,
              ),
            ),
            // 7. Status (Chip)
            Expanded(
              flex: 1,
              child: Align(
                alignment: Alignment.centerLeft,
                child: StatusChip(status: member.status),
              ),
            ),
            // 8. Actions (More Icon)
            const SizedBox(
              width: 30,
              child: Icon(
                Icons.more_vert,
                size: 20,
                color: Colors.grey,
              ),
            ),
          ],
        ),
        verticalDivider,
        Divider(
          color: ColorsManegar.grey.withOpacity(0.3),
          height: 1,
        ), // فاصل بين الصفوف
        verticalDivider,
      ],
    );
  }
}
