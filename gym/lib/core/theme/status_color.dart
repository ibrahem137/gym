import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:gym/core/theme/colors.dart';
import 'package:gym/features/members/data/member_model_class.dart';

late final MemberModelClass member;

Color getStatusColor() {
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
