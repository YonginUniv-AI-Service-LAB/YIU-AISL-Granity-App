import 'package:flutter/material.dart';
import 'package:granity/data/majorList.dart';
import 'package:granity/data/userInfo.dart';
import 'package:granity/design/colors.dart';
import 'package:granity/widgets/BaseAppBar.dart';
import 'package:granity/widgets/buttonWidgets/main_color_button.dart';
import 'package:granity/widgets/groupWidgets/defaultSectionTitle.dart';
import 'package:granity/widgets/textFieldWidgets/dropDownList.dart';
import 'package:granity/widgets/textFieldWidgets/textFieldButton.dart';
import 'package:granity/widgets/textFieldWidgets/userInfoTextField.dart';

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
              padding: const EdgeInsets.fromLTRB(50, 30, 50, 30),
              margin: const EdgeInsets.only(bottom: 30),
              child: SingleChildScrollView(
                child: Column(children: [
                  // 기본정보 입력 섹션
                  Container(
                    margin: const EdgeInsets.only(bottom: 50),
                    child: Column(children: [
                      DefaultSectionTitleWidget(
                          title: '기본정보',
                          subtitle:
                              '- 학교 이메일은 @yiu.ac.kr를 제외하고 입력\n- 학교 이메일 입력 후 이메일 인증 진행 필수\n- 이름은 학교에 등록된 본명을 입력\n- 비밀번호는 영문자+특수문자+숫자 포함 8자리 이상 입력',
                          titleColor: ColorStyles.textBlackColor,
                          subtitleColor: ColorStyles.textBodyColor),
                      TextFieldButtonWidget(
                          labelText: '학교 이메일',
                          hintText: "ex) 202433001",
                          buttonText: '인증번호 전송',
                          onPressed: () {}),
                      TextFieldButtonWidget(
                          labelText: '인증번호',
                          hintText: "인증번호 입력",
                          buttonText: '인증번호 확인',
                          onPressed: () {}),
                      UserInfoTextFieldWidget(
                          labelText: "이름",
                          hintText: "이름(본명) 입력",
                          obscureText: false),
                      UserInfoTextFieldWidget(
                          labelText: "비밀번호",
                          hintText: "영문자+특수문자+숫자 포함 8자리 이상",
                          obscureText: true),
                    ]),
                  ),

                  // 학적 입력 섹션
                  Container(
                    margin: const EdgeInsets.only(bottom: 50),
                    child: Column(children: [
                      DefaultSectionTitleWidget(
                          title: '학적',
                          subtitle:
                              '- 학생은 학년과 현재 학적 상태를 정확하게 선택\n- 교수 및 직원은 해당없음을 선택',
                          titleColor: ColorStyles.textBlackColor,
                          subtitleColor: ColorStyles.textBodyColor),
                      DropDownListWidget(
                          margin: const EdgeInsets.only(bottom: 15),
                          items: userRole.keys.toList(),
                          hintText: '구분',
                          initialItem: '학생',
                          onChanged: () {}),
                      DropDownListWidget(
                          margin: const EdgeInsets.only(bottom: 15),
                          items: userGradeList,
                          hintText: '학년',
                          initialItem: null,
                          onChanged: () {}),
                      DropDownListWidget(
                          margin: const EdgeInsets.only(bottom: 15),
                          items: userStatus.keys.toList(),
                          hintText: '학적 상태',
                          initialItem: null,
                          onChanged: () {}),
                    ]),
                  ),

                  // 전공 입력 섹션
                  Container(
                    margin: const EdgeInsets.only(bottom: 50),
                    child: Column(children: [
                      DefaultSectionTitleWidget(
                          title: '전공',
                          subtitle:
                              '- 단일전공 학생은 전공1만 선택, 전공2와 전공3은 해당없음을 선택\n- 복수전공, 부전공 학생은 전공2와 전공3을 선택\nex) 주전공+부전공 학생은 전공1에 주전공, 전공2에 부전공 선택',
                          titleColor: ColorStyles.textBlackColor,
                          subtitleColor: ColorStyles.textBodyColor),
                      DropDownListWidget(
                          margin: const EdgeInsets.only(bottom: 15),
                          items: majorList.keys.toList(),
                          hintText: '전공1',
                          initialItem: null,
                          onChanged: () {}),
                      DropDownListWidget(
                          margin: const EdgeInsets.only(bottom: 15),
                          items: majorListIncludeNot.keys.toList(),
                          hintText: '전공2',
                          initialItem: majorListIncludeNot.keys.first,
                          onChanged: () {}),
                      DropDownListWidget(
                          margin: const EdgeInsets.only(bottom: 15),
                          items: majorListIncludeNot.keys.toList(),
                          hintText: '전공3',
                          initialItem: majorListIncludeNot.keys.first,
                          onChanged: () {}),
                    ]),
                  ),

                  MainColorButtonWidget(title: '회원가입')
                ]),
              ),
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
