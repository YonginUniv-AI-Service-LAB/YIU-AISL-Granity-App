import 'package:flutter/material.dart';
import 'package:granity/design/colors.dart';
import 'package:granity/widgets/textFieldWidgets/userInfoTextField.dart';

// 텍스트필드 + 버튼 ex) 회원가입 이메일 인증
Container TextFieldButtonWidget(
    {required labelText,
    required hintText,
    required buttonText,
    required onPressed
    // required Function(int) onClick,
    }) {
  return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Flexible(
            child: UserInfoTextFieldWidget(
                labelText: labelText, hintText: hintText, obscureText: false),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 5, left: 10),
            child: ElevatedButton(
              onPressed: onPressed,
              style: ElevatedButton.styleFrom(
                backgroundColor: ColorStyles.appMainColor,
                foregroundColor: Colors.white,
                textStyle: const TextStyle(
                  fontFamily: "Pretendard",
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
              ),
              child: Text(buttonText),
            ),
            // onPressed: () => _handleSubmitted(_textController.text)
          )
        ],
      ));
}
