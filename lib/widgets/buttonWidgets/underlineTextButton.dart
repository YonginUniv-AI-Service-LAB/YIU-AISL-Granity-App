import 'package:flutter/material.dart';
import 'package:granity/design/colors.dart';

// 가로로 긴 기본 버튼 ex) 회원가입, 로그인
Container UnderLineTextButtonWidget({
  required text,
  required Function() onPressed,
}) {
  return Container(
    child: TextButton(
      onPressed: () {},
      child: Container(
        padding: const EdgeInsets.only(
          bottom: 0, // Space between underline and text
        ),
        decoration: const BoxDecoration(
            border: Border(
                bottom: BorderSide(
          color: ColorStyles.textBodyColor,
          width: 1.0, // Underline thickness
        ))),
        child: Text(
          text,
          style: const TextStyle(
            color: ColorStyles.textBodyColor,
          ),
        ),
      ),
    ),
  );
}
