import 'package:flutter/material.dart';
import 'package:granity/design/colors.dart';
import 'package:granity/widgets/badgeWigets/status_badge.dart';

// 미승인 뱃지
Container NotApprovalBadgeWidget() {
  return StatusBadgeWidget(
      backgroundColor: ColorStyles.statusYellowLight,
      Widget: const Text(
        "미승인",
        style: TextStyle(
          fontFamily: 'Pretendard',
          fontSize: 15,
          fontWeight: FontWeight.bold,
          color: ColorStyles.statusYellow,
        ),
      ));
}
