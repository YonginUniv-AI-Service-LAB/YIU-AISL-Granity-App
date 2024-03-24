import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:granity/widgets/buttonWidgets/main_color_button.dart';
import 'package:granity/widgets/buttonWidgets/main_color_outlined_button.dart';
import 'package:granity/widgets/buttonWidgets/underlineTextButton.dart';
import 'package:granity/widgets/textFieldWidgets/userInfoTextField.dart';
import 'package:granity/widgets/textWidgets/granitySymbol.dart';

class LoginScreen extends StatelessWidget {
  final emailController = TextEditingController();
  final pwdController = TextEditingController();

  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Scaffold(
            bottomNavigationBar: SafeArea(
                child: Container(
              padding: const EdgeInsets.fromLTRB(60, 0, 60, 50),
              child: MainColorOutLinedButtonWidget(
                title: "회원가입",
                onPressed: () => {context.push('/join')},
              ),
            )),
            // appBar: BaseAppBar(appBar: AppBar(), title: "로그인", center: true),
            body: SafeArea(
              child: Container(
                color: Colors.white,
                padding: const EdgeInsets.fromLTRB(60, 100, 60, 30),
                child: Column(children: [
                  GranitySymbolWidget(),
                  Container(
                    padding: const EdgeInsets.only(top: 30, bottom: 20),
                    child: Column(children: [
                      UserInfoTextFieldWidget(
                          labelText: "학교 이메일",
                          hintText: "ex) 202433001, wjlee",
                          obscureText: false),
                      UserInfoTextFieldWidget(
                          labelText: "비밀번호",
                          hintText: "비밀번호 입력",
                          obscureText: true),
                    ]),
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    child: MainColorButtonWidget(
                      title: "로그인",
                      onPressed: () => print('로그인'),
                    ),
                  ),
                  UnderLineTextButtonWidget(
                      text: "비밀번호를 잊으셨나요?", onPressed: () {}),
                ]),
              ),
            )));
  }

  void login(
      String email, String pwd, String? fcmToken, BuildContext context) async {
    // // var status = await Permission.notification.status;

    // if (status.isGranted) {
    //   // If granted, proceed with the login
    //   print("권한 설정 완료");
    // } else if (status.isDenied || status.isRestricted) {
    //   print("권한 설정 실패");
    //   // If not granted, request it
    //   // status = await Permission.notification.request();
    //   if (status.isGranted) {
    //     print("권한 설정 다시 완료");
    //     // If user granted permission, proceed with the login
    //   } else {
    //     print("권한 설정 다시 실패");
    //     // If user didn't grant permission, show an alert or something
    //   }
    // }
    // var url = Uri.parse("${dotenv.env['API_URL']}:8080/login");
    // var response = await http.post(
    //   url,
    //   headers: <String, String>{
    //     'Content-Type': 'application/json; charset=UTF-8',
    //   },
    //   body: jsonEncode(
    //       <String, dynamic>{'email': email, 'pwd': pwd, 'fcmToken': fcmToken}),
    // );
    // if (response.statusCode == 200) {
    //   // Map<String, dynamic> body = jsonDecode(response.body);
    //   Map<String, dynamic> tokenInfo = body['token'];
    //   String token = tokenInfo['accessToken'];
    //   // setToken(token);
    //   Navigator.of(context).pushAndRemoveUntil(
    //       // MaterialPageRoute(builder: (context) => StartScreen()),
    //       // (route) => false);
    // } else if (response.statusCode == 400) {
    //   showDialog(
    //     context: context,
    //     builder: (BuildContext context) {
    //       return AlertDialog(
    //         title: Text('알림'),
    //         content: Text('학번과 비밀번호를 모두 입력해주세요.'),
    //         actions: <Widget>[
    //           TextButton(
    //             child: Text('확인'),
    //             onPressed: () {
    //               Navigator.of(context).pop();
    //             },
    //           ),
    //         ],
    //       );
    //     },
    //   );
    // } else if (response.statusCode == 402) {
    //   showDialog(
    //       context: context,
    //       builder: (BuildContext context) {
    //         return AlertDialog(
    //           title: Text('알림'),
    //           content: Text('회원가입을 하지 않은 사용자 입니다.'),
    //           actions: <Widget>[
    //             TextButton(
    //                 onPressed: () {
    //                   Navigator.of(context).push(
    //                     MaterialPageRoute(
    //                         builder: (BuildContext context) =>
    //                             JoinScreen(fcmToken: fcmToken)),
    //                   );
    //                 },
    //                 child: Text('회원가입하러 가기'))
    //           ],
    //         );
    //       });
    // } else if (response.statusCode == 401) {
    //   showDialog(
    //       context: context,
    //       builder: (BuildContext context) {
    //         return AlertDialog(
    //           title: Text('알림'),
    //           content: Text('학번과 비밀번호가 일치하지 않습니다.'),
    //           actions: <Widget>[
    //             TextButton(
    //                 onPressed: () {
    //                   Navigator.of(context).pop();
    //                 },
    //                 child: Text('회원가입하러 가기'))
    //           ],
    //         );
    //       });
    // }
  }

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
