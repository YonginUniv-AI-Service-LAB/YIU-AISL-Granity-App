import 'package:flutter/material.dart';
import 'package:granity/design/colors.dart';

// 기본 라벨 ex) 회원가입 텍스트필드 라벨
Text BaseBodyTextWidget({required title
    // required Function(int) onClick,
    }) {
  return Text(
    title,
    style: const TextStyle(
        color: ColorStyles.textBodyColor,
        fontWeight: FontWeight.w500,
        fontSize: 15),
  );
}
