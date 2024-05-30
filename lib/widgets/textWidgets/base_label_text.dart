import 'package:flutter/material.dart';
import 'package:granity/design/colors.dart';

// 기본 라벨 ex) 회원가입 텍스트필드 라벨
Text BaseLabelTextWidget(
    {required title, required double? fontSize, TextAlign? textAlign
    // required Function(int) onClick,
    }) {
  return Text(
    title,
    style: TextStyle(
      fontFamily: 'Pretendard',
      fontSize: fontSize,
      fontWeight: FontWeight.bold,
      color: ColorStyles.textBlackColor,
    ),
  );
}
