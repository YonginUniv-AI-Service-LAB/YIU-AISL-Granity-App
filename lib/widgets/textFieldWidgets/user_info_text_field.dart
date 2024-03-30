import 'package:flutter/material.dart';
import 'package:granity/design/colors.dart';

// 회원가입, 로그인 등 유저의 정보를 입력받는 TextField
Container UserInfoTextFieldWidget(
    {required labelText, required hintText, required obscureText, required controller
    // required Function(int) onClick,
    }) {
  return Container(
    margin: const EdgeInsets.only(bottom: 10),
    child: TextFormField(
      controller: controller,
      style: const TextStyle(
          fontSize: 18,
          color: ColorStyles.textBlackColor,
          fontWeight: FontWeight.bold),
      obscureText: obscureText,
      enabled: true,
      decoration: InputDecoration(
          enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: ColorStyles.textDisableColor)),
          focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: ColorStyles.appMainColor)),
          labelText: labelText,
          labelStyle: const TextStyle(
            color: ColorStyles.textBodyColor,
            fontFamily: 'Pretendard',
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
          hintText: hintText,
          hintStyle: const TextStyle(
            fontFamily: 'Pretendard',
            fontSize: 18,
            fontWeight: FontWeight.w300,
          )),
    ),
  );
}
