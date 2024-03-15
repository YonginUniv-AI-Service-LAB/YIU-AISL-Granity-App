import 'package:flutter/material.dart';

import 'package:granity/widgets/BaseAppBar.dart';
import 'package:granity/widgets/textInputWidgets/userInfoTextInput.dart';

import 'package:granity/design/colors.dart';
import 'package:granity/data/majorList.dart';

const List<String> list = <String>['One', 'Two', 'Three', 'Four'];

class JoinScreen extends StatefulWidget {
  final emailController = TextEditingController();
  final pwdController = TextEditingController();

  JoinScreen({super.key});

  @override
  State<JoinScreen> createState() => _JoinScreenState();
}

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
              padding: const EdgeInsets.fromLTRB(60, 30, 60, 30),
              child: Column(children: [
                UserInfoTextInputWidget(labelText: "학번", hintText: "학번을 입력하세요"),
                UserInfoTextInputWidget(
                    labelText: "비밀번호", hintText: "비밀번호를 입력하세요"),
                UserInfoTextInputWidget(labelText: "이름", hintText: "이름을 입력하세요"),
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
