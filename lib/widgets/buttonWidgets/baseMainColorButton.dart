import 'package:flutter/material.dart';
import 'package:granity/design/colors.dart';

// 가로로 긴 기본 버튼 ex) 회원가입, 로그인
Container BaseMainColorButtonWidget({
  required title,
  // required Function(int) onClick,
}) {
  return Container(
    child: ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(double.infinity, 50),
        // 글자 배경색 설정
        backgroundColor: ColorStyles.appMainColor,
        // 글자 색상 및 애니메이션 색 설정
        foregroundColor: Colors.white,
        // 글자 그림자 설정
        shadowColor: ColorStyles.appSubColor,
        // 글자 3D 입체감 높이
        elevation: 5.0,
        textStyle: const TextStyle(
          fontFamily: "Pretendard",
          fontWeight: FontWeight.bold,
          fontSize: 20.0,
        ),
        padding: const EdgeInsets.all(10.0),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      ),
      child: Text(title),
    ),
  );
}
