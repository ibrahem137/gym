import 'package:flutter/material.dart';
import 'package:gym/core/theme/app_shadow.dart';
import 'package:gym/core/theme/colors.dart';
import 'package:gym/core/theme/styles.dart';
import 'package:gym/features/dashboard/ui/widgets/members_table/build_table_header.dart';

import 'member_row.dart'; // تأكد من استيراد MemberRow
import 'status_chip.dart'; // تأكد من استيراد StatusChip

class MembersTableCard extends StatelessWidget {
  // بيانات وهمية لمحاكاة تصميم الجدول
  static const List<MemberData> _membersData = [
    MemberData(
      name: 'John Smith',
      imageUrl: 'https://i.pravatar.cc/150?img=60',
      phone: '+1 234-567-8901',
      plan: 'Premium',
      startDate: '2024-01-15',
      endDate: '2025-01-15',
      daysLeft: '227 days',
      status: MemberStatus.active,
    ),
    MemberData(
      name: 'Sarah Johnson',
      imageUrl: 'https://i.pravatar.cc/150?img=58',
      phone: '+1 234-567-8902',
      plan: 'Basic',
      startDate: '2024-10-20',
      endDate: '2025-04-20',
      daysLeft: '138 days',
      status: MemberStatus.active,
    ),
    MemberData(
      name: 'Michael Brown',
      imageUrl: 'https://i.pravatar.cc/150?img=33',
      phone: '+1 234-567-8903',
      plan: 'Premium',
      startDate: '2024-11-01',
      endDate: '2024-12-10',
      daysLeft: '7 days',
      status: MemberStatus.nearExpiry,
    ),
    MemberData(
      name: 'Emily Davis',
      imageUrl: 'https://i.pravatar.cc/150?img=46',
      phone: '+1 234-567-8904',
      plan: 'Standard',
      startDate: '2024-06-15',
      endDate: '2024-11-28',
      daysLeft: 'Expired',
      status: MemberStatus.expired,
    ),
    MemberData(
      name: 'David Wilson',
      imageUrl: 'https://i.pravatar.cc/150?img=50',
      phone: '+1 234-567-8905',
      plan: 'Premium',
      startDate: '2024-02-10',
      endDate: '2025-02-10',
      daysLeft: '253 days',
      status: MemberStatus.active,
    ),
  ];

  const MembersTableCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorsManegar.backgroundcolor,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: ColorsManegar.black),
        boxShadow:
            AppShadows
                .chartShadowList, // استخدام الشادو الافتراضي
      ),
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Members',
            style:
                TextStyles
                    .font16Blackbold, // يجب تعريف هذا النمط في TextStyles
          ),
          const SizedBox(height: 20),
          BuildTableHeader(),
          const Divider(
            color: ColorsManegar.black,
            height: 1,
          ), // فاصل سميك تحت العنوان
          const SizedBox(height: 15),
          ..._membersData.map(
            (member) => MemberRow(member: member),
          ),
        ],
      ),
    );
  }
}
