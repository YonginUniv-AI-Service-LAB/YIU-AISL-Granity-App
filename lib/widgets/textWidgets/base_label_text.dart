import 'package:flutter/material.dart';
import 'package:granity/design/colors.dart';

// 기본 라벨 ex) 회원가입 텍스트필드 라벨
Text BaseLabelTextWidget({required title, TextAlign? textAlign
    // required Function(int) onClick,
    }) {
  return Text(
    title,
    style: const TextStyle(
      fontFamily: 'Pretendard',
      fontSize: 18,
      fontWeight: FontWeight.bold,
      color: ColorStyles.textBlackColor,
    ),
  );
}
