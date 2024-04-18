import 'package:flutter/material.dart';
import 'package:granity/design/colors.dart';

// 상태 뱃지 기본 형태
Container StatusBadgeWidget({required backgroundColor, required Widget}) {
  return Container(
      alignment: Alignment.center,
      width: 70,
      padding: const EdgeInsets.fromLTRB(15, 7, 15, 7),
      decoration: BoxDecoration(
          color: backgroundColor, borderRadius: BorderRadius.circular(5)),
      child: Widget);
}
