import 'package:flutter/material.dart';
import 'package:granity/design/colors.dart';

// 회원가입, 로그인 등 유저의 정보를 입력받는 TextField
Container DefaultSectionTitleWidget(
    {required title,
    required subtitle,
    required titleColor,
    required subtitleColor
    // required Function(int) onClick,
    }) {
  return Container(
    width: double.infinity,
    margin: EdgeInsets.only(bottom: 20),
    child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
                color: titleColor, fontWeight: FontWeight.bold, fontSize: 25),
          ),
          Text(
            subtitle,
            style: TextStyle(
                color: subtitleColor,
                fontWeight: FontWeight.w300,
                fontSize: 15),
          )
        ]),
  );
}
