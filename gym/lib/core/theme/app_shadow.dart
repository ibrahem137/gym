import 'package:flutter/material.dart';

class AppShadows {
  /// شادو خارجي ناعم للحقول والأزرار
  static final BoxShadow outer = BoxShadow(
    blurStyle: BlurStyle.outer,
    color: Colors.black.withOpacity(0.5),
    spreadRadius: 0,
    blurRadius: 5,
    offset: Offset(0, 0),
  );

  /// شادو خارجي كبير للكونتينرات الكبيرة (المربع الأساسي)
  static final BoxShadow bigOuter = BoxShadow(
    blurStyle: BlurStyle.outer,
    color: Colors.black.withOpacity(0.6),
    blurRadius: 15,
    offset: Offset(0, 0),
  );

  /// شادو داخلي خفيف إذا احتجتو
  static final BoxShadow inner = BoxShadow(
    blurStyle: BlurStyle.inner,
    color: Colors.black.withOpacity(0.2),
    blurRadius: 6,
    offset: Offset(0, 0),
  );

  /// لو بدك تستخدم الشادو بقائمة (BoxShadow[])
  static List<BoxShadow> outerList = [outer];
  static List<BoxShadow> bigOuterList = [bigOuter];
  static List<BoxShadow> innerList = [inner];
}
