import 'package:flutter/material.dart';

import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:granity/widgets/BaseAppBar.dart';
import 'package:granity/widgets/textFieldWidgets/userInfoTextField.dart';

import 'package:granity/design/colors.dart';
import 'package:granity/data/majorList.dart';
import 'package:granity/widgets/textWidgets/baseLabelText.dart';

const List<String> list = <String>['One', 'Two', 'Three', 'Four'];

class JoinScreen extends StatefulWidget {
  final emailController = TextEditingController();
  final pwdController = TextEditingController();

  JoinScreen({super.key});

  @override
  State<JoinScreen> createState() => _JoinScreenState();
}

const List<String> _list = [
  'Developer',
  'Designer',
  'Consultant',
  'Student',
];

class _JoinScreenState extends State<JoinScreen> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Scaffold(
            appBar: BaseAppBar(appBar: AppBar(), title: "회원가입", center: true),
            body: Container(
              color: Colors.white,
              padding: const EdgeInsets.fromLTRB(50, 30, 50, 30),
              child: Column(children: [
                UserInfoTextFieldWidget(
                    labelText: "학번", hintText: "학번을 입력하세요", obscureText: false),
                UserInfoTextFieldWidget(
                    labelText: "비밀번호",
                    hintText: "비밀번호를 입력하세요",
                    obscureText: true),
                UserInfoTextFieldWidget(
                    labelText: "이름", hintText: "이름을 입력하세요", obscureText: false),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    BaseLabelTextWidget(title: '전공1'),
                    CustomDropdown<String>(
                      hintText: '전공을 선택하세요',
                      items: _list,
                      // initialItem: _list[0],
                      onChanged: (value) {
                        print('changing value to: $value');
                      },
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(double.infinity, 50),
                        // 글자 배경색 설정
                        backgroundColor: ColorStyles.appMainColor,
                        // 글자 색상 및 애니메이션 색 설정
                        foregroundColor: Colors.white,
                        // 글자 그림자 설정
                        shadowColor: ColorStyles.appSubColor,
                        // 글자 3D 입체감 높이
                        elevation: 5.0,
                        textStyle: const TextStyle(
                          fontFamily: "Pretendard",
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                        ),
                        padding: const EdgeInsets.all(10.0),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                      ),
                      child: const Text('회원가입'),
                    ),
                  ],
                )
                // DropdownButton<String>(
                //   value: dropdownValue,
                //   elevation: 0,
                //   style: const TextStyle(color: Colors.deepPurple),
                //   focusColor: ColorStyles.appMainColor,
                //   underline: Container(
                //     height: 1,
                //     color: ColorStyles.textDisableColor
                //   ),
                //   onChanged: (String? value) {
                //     // This is called when the user selects an item.
                //     setState(() {
                //       dropdownValue = value!;
                //     });
                //   },
                //   items: majorList.map<DropdownMenuItem<String>>((major, code) => {
                //     return DropdownMenuItem<String> (child: Text(major), value: code,);
                //   })
                //   // list.map<DropdownMenuItem<String>>((String value) {
                //   //   return DropdownMenuItem<String>(
                //   //     value: value,
                //   //     child: Text(value),
                //   //   );
                //   // }).toList(),
                // )
              ]),
            )));
  }

  void login(
      String email, String pwd, String? fcmToken, BuildContext context) async {}

//   Future<void> setToken(String token) async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     await prefs.setString('token', token);
//   }

//   Future<String> getToken() async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     return prefs.getString('token') ?? '';
//   }
// }
}
