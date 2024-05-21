import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:granity/screens/test/firebase_auth_signup.dart';
import 'package:granity/screens/test/test_home.dart';
import 'package:granity/widgets/BaseAppBar.dart';

class TestFirebaseAuthSignInScreen extends StatefulWidget {
  const TestFirebaseAuthSignInScreen({super.key});

  @override
  State<TestFirebaseAuthSignInScreen> createState() =>
      _TestFirebaseAuthSignInScreenState();
}

class _TestFirebaseAuthSignInScreenState
    extends State<TestFirebaseAuthSignInScreen> {
  final _email_InputText = TextEditingController();
  final _passInputText = TextEditingController();


  // TextEditingController를 이용하여 입력값을 처리
  // FocusNode를 통해 TextField의 포커스를 제어
  // ❗️FocusNode는 state가 사라질 때도 남아 있는다 => ✅ 따로 dispose 처리 필요
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
                    // 이메일 로그인 버튼
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      width: double.infinity,
                      child: OutlinedButton(
                          onPressed: () async {
                            // 이메일, 비밀번호 중 하나라도 입력 안하면 패스
                            if (_email_InputText.text.isEmpty ||
                                _passInputText.text.isEmpty) return;

                            // 파이어베이스 이메일&비밀번호 로그인
                            try {
                              await FirebaseAuth.instance
                                  .signInWithEmailAndPassword(
                                      email: _email_InputText.text
                                          .toLowerCase()
                                          .trim(),
                                      password: _passInputText.text.trim());
                              print('success login');
                              final result = await context.push('/test/home');
                            } on FirebaseAuthException catch (e) {
                              print('an error occured $e');
                            }
                          },
                          child: const Text('이메일 로그인')),
                    ),
                    // 구글 로그인 버튼
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () async {
                          final googleSignin = GoogleSignIn();
                          final googleAccount = await googleSignin.signIn();

                          if (googleAccount != null) {
                            final googleAuth =
                                await googleAccount.authentication;

                            // 구글 로그인 후 얻은 accessToken & idToken 검증
                            if (googleAuth.accessToken != null &&
                                googleAuth.idToken != null) {
                              
                              // 구글 인증 정보를 firebase에 전송
                              try {
                                await FirebaseAuth.instance
                                    .signInWithCredential(
                                  GoogleAuthProvider.credential(
                                      idToken: googleAuth.idToken,
                                      accessToken: googleAuth.accessToken),
                                );
                                print('success registered');
                                final result = await context.push('/test/home');
                              } on FirebaseAuthException catch (e) {
                                print('an error occured $e');
                              } catch (e) {
                                print('an error occured $e');
                              }
                            } else {
                              print('an error occured 1');
                            }
                          } else {
                            print('an error occured 2');
                          }
                        },
                        child: const Text('구글로 시작하기'),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () async {
                          final result =
                              await context.push('/test/firebase/auth/signup');
                        },
                        child: const Text('회원가입'),
                      ),
                    )
                  ]),
            )));
  }
}
