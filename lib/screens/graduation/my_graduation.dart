import 'package:flutter/material.dart';
import 'package:granity/widgets/BaseAppBar.dart';
import 'package:granity/widgets/buttonWidgets/main_color_button.dart';

const List<String> list = <String>['One', 'Two', 'Three', 'Four'];

class MyGraduationScreen extends StatefulWidget {
  final emailController = TextEditingController();
  final pwdController = TextEditingController();

  MyGraduationScreen({super.key});

  @override
  State<MyGraduationScreen> createState() => _MyGraduationScreenState();
}

class _MyGraduationScreenState extends State<MyGraduationScreen> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    final showAppBar = Navigator.canPop(context);
    return GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Scaffold(
            appBar: showAppBar
                ? BaseAppBar(appBar: AppBar(), title: "나의 졸업관리", center: true)
                : null,
            body: SafeArea(
              child: Container(
                color: Colors.white,
                padding: const EdgeInsets.fromLTRB(50, 30, 50, 30),
                margin: const EdgeInsets.only(bottom: 30),
                child: SingleChildScrollView(
                  child: Column(
                      children: [MainColorButtonWidget(title: '나의 졸업관리', onPressed: () => {print('로그인')})]),
                ),
              ),
            )));
  }
}
