import 'package:flutter/material.dart';
import 'package:granity/design/colors.dart';

// 기본 라벨 ex) 회원가입 텍스트필드 라벨
Container GranitySymbolWidget() {
  return Container(
    child: const Text(
      'GRANITY',
      style: TextStyle(
        fontFamily: 'Pretendard',
        fontSize: 30,
        fontWeight: FontWeight.w800,
        color: ColorStyles.appMainColor,
      ),
    ),
  );
}
