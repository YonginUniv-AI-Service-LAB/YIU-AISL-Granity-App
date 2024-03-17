import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:granity/design/colors.dart';
import 'package:granity/widgets/textWidgets/baseLabelText.dart';

const List<String> _list = [
  'Developer',
  'Designer',
  'Consultant',
  'Student',
];

// 라벨 + 드롭다운 리스트 선택 ex) 회원가입 - 전공 선택
Container DropDownListWidget(
    {required items, required hintText, required initialItem, required onChanged, required margin
    // required Function(int) onClick,
    }) {
  return Container(
    margin: margin,
    child: CustomDropdown<String>.search(
      decoration: const CustomDropdownDecoration(
          closedFillColor: ColorStyles.appBackgroundColor,
          expandedFillColor: ColorStyles.appBackgroundColor,
          searchFieldDecoration: SearchFieldDecoration(
              fillColor: Colors.white,
              border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white)))),
      hintText: hintText,
      items: items,
      initialItem: initialItem,
      onChanged: (value) {
        print('changing value to: $value');
        // print(majorList[value]);
      },
    ),
  );
}
