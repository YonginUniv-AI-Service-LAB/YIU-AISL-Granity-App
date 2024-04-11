import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:granity/widgets/buttonWidgets/main_color_button.dart';

const List<String> list = <String>['One', 'Two', 'Three', 'Four'];

class MainScreen extends StatefulWidget {
  final emailController = TextEditingController();
  final pwdController = TextEditingController();

  MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Scaffold(
            // appBar: BaseAppBar(appBar: AppBar(), title: "게시판", center: true),
            body: SafeArea(
          child: Container(
            color: Colors.white,
            padding: const EdgeInsets.fromLTRB(50, 30, 50, 30),
            margin: const EdgeInsets.only(bottom: 30),
            child: SingleChildScrollView(
              child: Column(children: [
                MainColorButtonWidget(
                  title: '공지사항',
                  onPressed: () async {
                    final result = await context.push('/notice');
                  },
                ),
                MainColorButtonWidget(
                  title: '학과 정보',
                  onPressed: () async {
                    final result = await context.push('/major');
                  },
                ),
                MainColorButtonWidget(
                  title: '나의 졸업 요건',
                  onPressed: () async {
                    final result = await context.push('/major');
                  },
                ),
                MainColorButtonWidget(
                  title: '게시판',
                  onPressed: () async {
                    final result = await context.push('/board');
                  },
                ),
              ]),
            ),
          ),
        )));
  }
}


// MainColorButtonWidget(
//                   title: 'Basic ListView',
//                   onPressed: () async {
//                     final result = await context.push('/test/listview/basic');
//                   },
//                 ),
//                 MainColorButtonWidget(
//                   title: 'Error ListView',
//                   onPressed: () async {
//                     final result = await context.push('/test/listview/error');
//                   },
//                 ),
//                 MainColorButtonWidget(
//                   title: 'Custom ListView',
//                   onPressed: () async {
//                     final result = await context.push('/test/listview/custom');
//                   },
//                 ),