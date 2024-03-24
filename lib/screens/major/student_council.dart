import 'package:flutter/material.dart';
import 'package:granity/widgets/BaseAppBar.dart';
import 'package:granity/widgets/buttonWidgets/main_color_button.dart';

const List<String> list = <String>['One', 'Two', 'Three', 'Four'];

class StudentCouncilScreen extends StatefulWidget {
  final emailController = TextEditingController();
  final pwdController = TextEditingController();

  StudentCouncilScreen({super.key});

  @override
  State<StudentCouncilScreen> createState() => _StudentCouncilScreenState();
}

class _StudentCouncilScreenState extends State<StudentCouncilScreen> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Scaffold(
            appBar: BaseAppBar(appBar: AppBar(), title: "학생회", center: true),
            body: Container(
              color: Colors.white,
              padding: const EdgeInsets.fromLTRB(50, 30, 50, 30),
              margin: const EdgeInsets.only(bottom: 30),
              child: SingleChildScrollView(
                child: Column(children: [MainColorButtonWidget(title: '학생회', onPressed: () => {print('로그인')})]),
              ),
            )));
  }
}
