import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('홈'),
      ),
      body: Center(
          child: ElevatedButton(
        child: Text('회원가입 스크린sdf으로 이동'),
        onPressed: () {
          Navigator.pushNamed(context, '/join');
        },
      )),
    );
  }
}
