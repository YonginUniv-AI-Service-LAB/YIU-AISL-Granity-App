import 'package:flutter/material.dart';
import 'package:granity/colors.dart';

Container UserInfoTextInputWidget({
  required labelText,
  required hintText,
  // required Function(int) onClick,
}) {
  return Container(
    margin: EdgeInsets.only(bottom: 15),
    child: TextField(
        style: TextStyle(
            fontSize: 18,
            color: ColorStyles.textBlackColor,
            fontWeight: FontWeight.bold),
        // obscureText: true,
        enabled: true,
        decoration: InputDecoration(
            enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: ColorStyles.textDisableColor)),
            focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: ColorStyles.appMainColor)),
            labelText: labelText,
            labelStyle: TextStyle(
              color: ColorStyles.textBodyColor,
              fontFamily: 'Pretendard',
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
            hintText: hintText,
            hintStyle: TextStyle(
              fontFamily: 'Pretendard',
              fontSize: 18,
              fontWeight: FontWeight.w300,
            )),
      ),
  );
}
