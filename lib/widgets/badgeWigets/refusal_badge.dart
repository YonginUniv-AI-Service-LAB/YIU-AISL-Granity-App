import 'package:flutter/material.dart';
import 'package:granity/design/colors.dart';
import 'package:granity/widgets/badgeWigets/status_badge.dart';

// 반려 뱃지
Container RefusalBadgeWidget() {
  return StatusBadgeWidget(
      backgroundColor: ColorStyles.statusRedLight,
      Widget: const Text(
        "반려",
        style: TextStyle(
          fontFamily: 'Pretendard',
          fontSize: 15,
          fontWeight: FontWeight.bold,
          color: ColorStyles.statusRed,
        ),
      ));
}
