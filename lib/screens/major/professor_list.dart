import 'package:flutter/material.dart';
import 'package:granity/widgets/BaseAppBar.dart';
import 'package:granity/widgets/buttonWidgets/main_color_button.dart';

const List<String> list = <String>['One', 'Two', 'Three', 'Four'];

class ProfessorListScreen extends StatefulWidget {
  final emailController = TextEditingController();
  final pwdController = TextEditingController();

  ProfessorListScreen({super.key});

  @override
  State<ProfessorListScreen> createState() => _ProfessorListScreenState();
}

class _ProfessorListScreenState extends State<ProfessorListScreen> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Scaffold(
            appBar: BaseAppBar(appBar: AppBar(), title: "교수진", center: true),
            body: Container(
              color: Colors.white,
              padding: const EdgeInsets.fromLTRB(50, 30, 50, 30),
              margin: const EdgeInsets.only(bottom: 30),
              child: SingleChildScrollView(
                child: Column(children: [MainColorButtonWidget(title: '교수진', onPressed: () => {print('로그인')})]),
              ),
            )));
  }
}
