import 'package:flutter/material.dart';
import 'package:granity/design/colors.dart';

// 기본 라벨 ex) 회원가입 텍스트필드 라벨
Container BaseLabelTextWidget({
    required title
    // required Function(int) onClick,
}) {
  return Container(
    child: Text(
      title,
      style: TextStyle(
        fontFamily: 'Pretendard',
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: ColorStyles.textBodyColor,
      ),
    ),
  );
}
