import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:granity/screens/test/firebase_auth_signin.dart';
import 'package:granity/widgets/BaseAppBar.dart';

class TestFirebaseAuthSignUpScreen extends StatefulWidget {
  const TestFirebaseAuthSignUpScreen({super.key});

  @override
  State<TestFirebaseAuthSignUpScreen> createState() =>
      _TestFirebaseAuthSignUpScreenState();
}

class _TestFirebaseAuthSignUpScreenState
    extends State<TestFirebaseAuthSignUpScreen> {
  final _email_InputText = TextEditingController();
  final _passInputText = TextEditingController();

  @override
  void dispose() {
    _email_InputText.dispose();
    _passInputText.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Scaffold(
            appBar:
                BaseAppBar(appBar: AppBar(), title: "파이어베이스 인증", center: true),
            body: Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // 이메일 입력 필드
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: TextField(
                        controller: _email_InputText,
                        decoration: const InputDecoration(hintText: 'Email'),
                      ),
                    ),
                    // 비밀번호 입력 필드
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: TextField(
                        controller: _passInputText,
                        obscureText: true,
                        decoration: const InputDecoration(hintText: 'Password'),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      width: double.infinity,
                      child: OutlinedButton(
                          onPressed: () async {
                            // 이메일, 비밀번호 중 하나라도 입력 안하면 패스
                            if (_email_InputText.text.isEmpty ||
                                _passInputText.text.isEmpty) return;

                            // 파이어베이스에 계정 추가(회원가입)
                            try {
                              await FirebaseAuth.instance
                                  .createUserWithEmailAndPassword(
                                      email: _email_InputText.text
                                          .toLowerCase()
                                          .trim(),
                                      password: _passInputText.text.trim());
                              print('success registered');
                              final result = await context
                                  .push('/test/firebase/auth/signin');
                            } on FirebaseAuthException catch (e) {
                              print('an error occured $e');
                            }
                          },
                          child: const Text('이메일 회원가입')),
                    )
                  ]),
            )));
  }
}
