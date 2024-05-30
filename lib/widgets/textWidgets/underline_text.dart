import 'package:flutter/material.dart';
import 'package:granity/design/colors.dart';

// 기본 라벨 ex) 회원가입 텍스트필드 라벨
Widget UnderlineTextWidget({
  required double? width,
  required title,
  required double? fontSize,
  required color,
  required double? thickness,
  TextAlign? textAlign,
  // required Function(int) onClick,
}) {
  return Column(
    children: [
      Text(
        title,
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      SizedBox(width: width, child: Divider(color: color, thickness: thickness))
    ],
  );
}
