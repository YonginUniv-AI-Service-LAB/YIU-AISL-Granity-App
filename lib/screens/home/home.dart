import 'package:flutter/material.dart';
import 'package:granity/design/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('홈'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
          selectedItemColor: ColorStyles.appMainColor,
          unselectedItemColor: ColorStyles.textBodyColor,

          unselectedLabelStyle: TextStyle(fontFamily: 'Pretendard'),
          selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold, fontFamily: 'Pretendard'),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '메인',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.dashboard),
              label: '게시판',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: '졸업',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'MY',
            )
          ]),
      body: Center(
          child: ElevatedButton(
        child: const Text('회원가입 스크린으로 이동'),
        onPressed: () {
          Navigator.pushNamed(context, '/join');
        },
      )),
    );
  }
}
