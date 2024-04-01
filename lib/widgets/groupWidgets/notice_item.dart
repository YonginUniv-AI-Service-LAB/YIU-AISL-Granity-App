import 'package:flutter/material.dart';
import 'package:granity/design/colors.dart';

// 섹션 타이틀 그룹 - 제목, 부제목(설명)
Widget NoticeItemWidget({
  required title,
  required category,
  required created_at,
  required Function() onPressed,
}) {
  return TextButton(
      style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          foregroundColor: ColorStyles.textDisableColor,
          alignment: Alignment.centerLeft,
          backgroundColor: Colors.white,
          elevation: 0),
      onPressed: onPressed,
      child: (Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          category == "공지"
              ? Text(
                  category,
                  style: const TextStyle(
                      color: ColorStyles.appMainColor,
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                )
              : Text(
                  category,
                  style: const TextStyle(
                      color: ColorStyles.statusYellow,
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                ),
          Text(
            title,
            style: const TextStyle(
                color: ColorStyles.textBlackColor,
                fontSize: 17,
                fontWeight: FontWeight.w700),
          ),
          Text(
            created_at,
            style: const TextStyle(
              color: ColorStyles.textBodyColor,
              fontSize: 14,
            ),
          )
        ],
      )));
}
