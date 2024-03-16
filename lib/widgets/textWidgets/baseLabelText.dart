import 'package:flutter/material.dart';
import 'package:granity/design/colors.dart';

// 회원가입, 로그인 등 유저의 정보를 입력받는 TextField
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
