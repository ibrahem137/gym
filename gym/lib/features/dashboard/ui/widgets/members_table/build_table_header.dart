import 'package:flutter/material.dart';
import 'package:gym/core/theme/styles.dart';

class BuildTableHeader extends StatelessWidget {
  const BuildTableHeader({super.key});

  @override
  Widget build(BuildContext context) {
    TextStyle headerStyle = TextStyles.font10BlackBold;
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Text('Member', style: headerStyle),
          ),
          Expanded(
            flex: 1,
            child: Text('Phone', style: headerStyle),
          ),
          Expanded(
            flex: 1,
            child: Text('Plan', style: headerStyle),
          ),
          Expanded(
            flex: 1,
            child: Text('Start Date', style: headerStyle),
          ),
          Expanded(
            flex: 1,
            child: Text('End Date', style: headerStyle),
          ),
          Expanded(
            flex: 1,
            child: Text('Days Left', style: headerStyle),
          ),
          Expanded(
            flex: 1,
            child: Text('Status', style: headerStyle),
          ),
          const SizedBox(
            width: 30,
          ), // لمطابقة مساحة أيقونة الإجراءات
        ],
      ),
    );
  }
}
