import 'package:flutter/material.dart';
import 'package:granity/design/colors.dart';

// 상태 뱃지 기본 형태
Container StatusBadgeWidget({required backgroundColor, required Widget}) {
  return Container(
      alignment: Alignment.center,
      width: 80,
      padding: const EdgeInsets.fromLTRB(10, 7, 10, 7),
      decoration: BoxDecoration(
          color: backgroundColor, borderRadius: BorderRadius.circular(5)),
      child: Widget);
}
