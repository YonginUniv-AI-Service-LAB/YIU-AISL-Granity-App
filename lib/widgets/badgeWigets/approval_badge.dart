import 'package:flutter/material.dart';
import 'package:granity/design/colors.dart';
import 'package:granity/widgets/badgeWigets/status_badge.dart';

// 승인 뱃지
Container ApprovalBadgeWidget() {
  return StatusBadgeWidget(
      backgroundColor: ColorStyles.statusGreenLight,
      Widget: const Text(
        "승인",
        style: TextStyle(
          fontFamily: 'Pretendard',
          fontSize: 15,
          fontWeight: FontWeight.bold,
          color: ColorStyles.statusGreen,
        ),
      ));
}
