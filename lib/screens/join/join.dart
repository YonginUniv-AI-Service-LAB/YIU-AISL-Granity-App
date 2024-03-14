import 'package:flutter/material.dart';

class JoinScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('회원가입'),
      ),
      body: Center(
          child: ElevatedButton(
        child: Text('로그인 스크린으로 이동'),
        onPressed: () {
          Navigator.pushNamed(context, '/login');
        },
      )),
    );
  }
}
