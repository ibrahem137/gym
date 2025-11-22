import 'package:flutter/material.dart';
import 'package:gym/core/theme/colors.dart';
import 'package:gym/features/members/data/member_model_class.dart';

Color getStatusColor(MemberModelClass member) {
  switch (member.status.toLowerCase()) {
    case "active":
      return ColorsManegar.mainOrange;
    case "expired":
      return Colors.black;
    case "pending":
      return Colors.yellow;
    default:
      return Colors.grey;
  }
}
