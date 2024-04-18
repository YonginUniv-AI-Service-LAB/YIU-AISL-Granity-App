import 'package:flutter/material.dart';
import 'package:granity/design/colors.dart';

// 가로로 긴 기본 버튼 ex) 회원가입, 로그인
Container GraySmallButtonWidget({
  required title,
  required Function() onPressed,
}) {
  return Container(
    child: TextButton(
        style: ElevatedButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            foregroundColor: ColorStyles.textDisableColor,
            backgroundColor: ColorStyles.lightGrayColor,
            elevation: 0),
        onPressed: onPressed,
        child: Text(
          title,
          style: const TextStyle(
            color: ColorStyles.textBodyColor,
            fontWeight: FontWeight.bold,
          ),
        )),
  );
}
