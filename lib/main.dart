import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:granity/design/colors.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: '.env');
  // ex) dotenv.load(fileName: 'assets/config/.env')
  runApp(const ProviderScope(child: MyApp()));
}

// void main() {
//   runApp(const MyApp());
// }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GRANITY',
      home: const MyWidget(),
      color: ColorStyles.appMainColor,
      theme: ThemeData(
        primaryColor: ColorStyles.appMainColor,
        focusColor: ColorStyles.appMainColor,
        hoverColor: ColorStyles.appMainColor,
        textSelectionTheme:
            const TextSelectionThemeData(cursorColor: ColorStyles.appMainColor),
        fontFamily: 'Pretendard',
      ),
      // routes: routes,
      builder: (context, child) => MediaQuery(
        data: MediaQuery.of(context).copyWith(
          textScaler: const TextScaler.linear(1.0),
        ),
        child: child!,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

// Stateful 위젯 만들기
class MyWidget extends StatefulWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _MyWidget();
}

class _MyWidget extends State<MyWidget> {
  // 현재 선택된 탭 인덱스 관리할 변수
  int _selectedIndex = 0;

  // 탭 될때 인덱스 변수 변경할 함수
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BottomNavigationBar Sample'),
      ),
      body: Center(
          child: ElevatedButton(
        child: const Text('회원가입 스크린으로 이동'),
        onPressed: () {
          Navigator.pushNamed(context, '/join');
        },
      )),
      // bottomNavigationBar 속성 추가 후 탭 요소가 될 item들 추가
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex, // 현재 인덱스를 _selectedIndex에 저장
        onTap: _onItemTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'tab1',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera),
            label: 'tab2',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.usb_rounded),
            label: 'tab3',
          ),
        ],
      ),
    );
  }
}
