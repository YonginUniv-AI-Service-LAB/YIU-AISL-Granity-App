import 'package:flutter/material.dart';

// 섹션 타이틀 그룹 - 제목, 부제목(설명)
Container MyPageMenuItemWidget({required title, required colorName
    // required Function(int) onClick,
    }) {
  return Container(
      width: 30,
      height: 100,
      margin: const EdgeInsets.only(bottom: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              height: 40,
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(left: 10),
              child: Text(title)),
          Container(height: 100, color: colorName),
        ],
      ));
}
