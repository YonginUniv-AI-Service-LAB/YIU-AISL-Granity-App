import 'package:flutter/material.dart';
import 'package:granity/widgets/BaseAppBar.dart';

class TestHomeScreen extends StatelessWidget {
  const TestHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaseAppBar(appBar: AppBar(), title: "테스트 홈 화면", center: true),
      body: const Center(child: Text('파이어베이스 인증 끝! [홈 화면]')),
    );
  }
}
