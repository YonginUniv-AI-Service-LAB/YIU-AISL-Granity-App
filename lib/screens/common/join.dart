import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:granity/data/majorList.dart';
import 'package:granity/data/userInfo.dart';
import 'package:granity/design/colors.dart';
import 'package:granity/widgets/BaseAppBar.dart';
import 'package:granity/widgets/buttonWidgets/main_color_button.dart';
import 'package:granity/widgets/groupWidgets/default_section_title.dart';
import 'package:granity/widgets/textFieldWidgets/dropdown_list.dart';
import 'package:granity/widgets/textFieldWidgets/text_field_button.dart';
import 'package:granity/widgets/textFieldWidgets/user_info_text_field.dart';

const List<String> list = <String>['One', 'Two', 'Three', 'Four'];

class JoinScreen extends StatefulWidget {
  const JoinScreen({super.key});

  @override
  State<JoinScreen> createState() => _JoinScreenState();
}

class _JoinScreenState extends State<JoinScreen> {
  String? auth;

  final emailController = TextEditingController();
  final authCodeController = TextEditingController();
  final nameController = TextEditingController();
  final pwdController = TextEditingController();

  String roleValue = userRole.keys.toList().first;
  String gradeValue = userGradeList.first;
  String statusValue = userStatus.keys.toList().first;

  String? major1Value;
  String major2Value = majorListIncludeNot.keys.first;
  String major3Value = majorListIncludeNot.keys.first;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Scaffold(
            appBar: BaseAppBar(appBar: AppBar(), title: "회원가입", center: true),
            body: SafeArea(
              child: Container(
                color: Colors.white,
                padding: const EdgeInsets.fromLTRB(50, 30, 50, 0),
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
                          onPressed: () async {
                            // API 요청
                            final response = await Dio().post(
                                '${dotenv.env['BASE_URL']}${dotenv.env['API_JOIN_EMAIL_AUTHENTICATION']}',
                                data: {'id': emailController.text});

                            // API 응답 결과 반영을 위한 상태 변경
                            setState(() {
                              // 특정 키 값 호출 : 'result' 키의 값 호출
                              auth = response.data;
                            });
                            print(auth);
                          },
                          controller: emailController,
                        ),
                        TextFieldButtonWidget(
                          labelText: '인증번호',
                          hintText: "인증번호 입력",
                          buttonText: '인증번호 확인',
                          onPressed: () {},
                          controller: authCodeController,
                        ),
                        UserInfoTextFieldWidget(
                          labelText: "이름",
                          hintText: "이름(본명) 입력",
                          obscureText: false,
                          controller: nameController,
                        ),
                        UserInfoTextFieldWidget(
                          labelText: "비밀번호",
                          hintText: "영문자+특수문자+숫자 포함 8자리 이상",
                          obscureText: true,
                          controller: pwdController,
                        ),
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
                            onChanged: (value) {
                              roleValue = value;
                              print("roleValue: $roleValue");
                            }),
                        DropDownListWidget(
                            margin: const EdgeInsets.only(bottom: 15),
                            items: userGradeList,
                            hintText: '학년',
                            initialItem: gradeValue,
                            onChanged: (value) {
                              gradeValue = value;
                              print("gradeValue: $gradeValue");
                            }),
                        DropDownListWidget(
                            margin: const EdgeInsets.only(bottom: 15),
                            items: userStatus.keys.toList(),
                            hintText: '학적 상태',
                            initialItem: statusValue,
                            onChanged: (value) {
                              statusValue = value;
                              print("statusValue: $statusValue");
                            }),
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
                            onChanged: (value) {
                              major1Value = value;
                            }),
                        DropDownListWidget(
                            margin: const EdgeInsets.only(bottom: 15),
                            items: majorListIncludeNot.keys.toList(),
                            hintText: '전공2',
                            initialItem: major2Value,
                            onChanged: (value) {
                              major2Value = value;
                            }),
                        DropDownListWidget(
                            margin: const EdgeInsets.only(bottom: 15),
                            items: majorListIncludeNot.keys.toList(),
                            hintText: '전공3',
                            initialItem: major3Value,
                            onChanged: (value) {
                              major3Value = value;
                            }),
                      ]),
                    ),

                    Container(
                      margin: const EdgeInsets.only(bottom: 50),
                      child: MainColorButtonWidget(
                          title: '회원가입', onPressed: () => {print('회원가입')}),
                    )
                  ]),
                ),
              ),
            )));
  }

  // Future<void> emailCheck(String email) async {
  //   var url = Uri.parse("${dotenv.env['BASE_URL']}${dotenv.env['JOIN']}"); // Android

  //   var response = await http.post(
  //     url,
  //     headers: <String, String>{
  //       'Content-Type': 'application/json; charset=UTF-8',
  //     },
  //     body: jsonEncode(<String, String>{
  //       'email': email,
  //     }),
  //   );

  //   if (response.statusCode == 200) {
  //     showDialog(
  //         context: context,
  //         builder: (BuildContext context) {
  //           return AlertDialog(
  //               title: Text('인증 코드 전송 완료'),
  //               content: Text('해당 이메일로 인증 코드가 전송되었습니다.'),
  //               actions: <Widget>[
  //                 TextButton(
  //                     onPressed: () {
  //                       Navigator.of(context).pop();
  //                     },
  //                     child: Text('확인'))
  //               ]);
  //         });
  //   }
  // }

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
