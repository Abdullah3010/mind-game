import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

extension TextStyleExtension on TextTheme {
  /// [Grey]
  TextStyle get grey14w500 => TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 14.sp,
        color: const Color(0xFF939598),
        height: 1.8,
      );

  TextStyle get grey14w700 => TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 14.sp,
        color: const Color(0xFF939598),
        height: 1.8,
      );

  /// [Blue]
  TextStyle get blue18w700 => TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 18.sp,
        color: const Color(0xFF280A82),
      );

  TextStyle get blue16w500 => TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 16.sp,
        color: const Color(0xFF280A82),
      );

  /// [White]
  TextStyle get white25w800 => TextStyle(
        fontWeight: FontWeight.w800,
        fontSize: 24.sp,
        color: const Color(0xffffffff),
      );

  TextStyle get white14w700 => TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 14.sp,
        color: const Color(0xffffffff),
      );

  TextStyle get white16w500 => TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 16.sp,
        color: const Color(0xffffffff),
      );

  TextStyle get white28w800 => TextStyle(
        fontWeight: FontWeight.w800,
        fontSize: 28.sp,
        color: const Color(0xffffffff),
      );

  /// [button]
  TextStyle get button => TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 16.sp,
        color: const Color(0xffffffff),
      );
}
