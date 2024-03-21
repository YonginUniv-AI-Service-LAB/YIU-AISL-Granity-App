import 'package:flutter/material.dart';
import 'package:granity/design/colors.dart';
import 'package:granity/screens/board/board.dart';
import 'package:granity/screens/graduation/my_graduation.dart';
import 'package:granity/screens/join/join.dart';
import 'package:granity/screens/user/user_information.dart';

class HomeScreen extends StatefulWidget {
  int _selectedIndex = 0;
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  _getBody() {
    switch (widget._selectedIndex) {
      case 0:
        return JoinScreen();
      case 1:
        return BoardScreen();
      case 2:
        return MyGraduationScreen();
      case 3:
        return UserInformationScreen();
    }
  }

  _getBottomNavigationBarItem(
      {required IconData iconData, required String text}) {
    return BottomNavigationBarItem(icon: Icon(iconData), label: text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          // title: const Text('홈'),
          ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: ColorStyles.appMainColor,
        unselectedItemColor: ColorStyles.textBodyColor,
        unselectedLabelStyle: const TextStyle(fontFamily: 'Pretendard'),
        selectedLabelStyle: const TextStyle(
            fontWeight: FontWeight.bold, fontFamily: 'Pretendard'),
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
        ],
        currentIndex: widget._selectedIndex,
        onTap: (index) {
          print(widget._selectedIndex);
          setState(() {
            widget._selectedIndex = index;
          });
        },
      ),
      body: _getBody(),
    );
  }
}
