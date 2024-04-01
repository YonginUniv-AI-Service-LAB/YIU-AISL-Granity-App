import 'package:flutter/material.dart';

// 섹션 타이틀 그룹 - 제목, 부제목(설명)
Container BoardItemWidget(
    {required title,
    required subtitle,
    required titleColor,
    required subtitleColor
    // required Function(int) onClick,
    }) {
  return Container(
    width: double.infinity,
    margin: const EdgeInsets.only(bottom: 20),
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
