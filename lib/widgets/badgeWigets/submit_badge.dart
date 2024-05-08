import 'package:flutter/material.dart';
import 'package:granity/design/colors.dart';
import 'package:granity/widgets/badgeWigets/status_badge.dart';

// 미승인 뱃지
Container SubmitBadgeWidget() {
  return StatusBadgeWidget(
      backgroundColor: ColorStyles.statusBlueLight,
      Widget: const Text(
        "승인대기",
        style: TextStyle(
          fontFamily: 'Pretendard',
          fontSize: 15,
          fontWeight: FontWeight.bold,
          color: ColorStyles.statusBlue,
        ),
      ));
}
