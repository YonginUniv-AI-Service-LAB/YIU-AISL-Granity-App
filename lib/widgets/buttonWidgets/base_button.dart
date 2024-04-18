import 'package:flutter/material.dart';
import 'package:granity/design/colors.dart';

// 기본 버튼 => 터치했을 때 네모 모양
Container BaseButtonWidget(
    {required Function() onPressed, required Widget, padding}) {
  return Container(
      child: TextButton(
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              foregroundColor: ColorStyles.textDisableColor,
              alignment: Alignment.centerLeft,
              elevation: 0,
              padding: padding),
          onPressed: onPressed,
          child: Widget));
}
