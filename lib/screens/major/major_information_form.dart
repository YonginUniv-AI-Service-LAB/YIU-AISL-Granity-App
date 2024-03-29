import 'package:flutter/material.dart';
import 'package:granity/widgets/BaseAppBar.dart';
import 'package:granity/widgets/buttonWidgets/main_color_button.dart';

const List<String> list = <String>['One', 'Two', 'Three', 'Four'];

class MajorInformationFormScreen extends StatefulWidget {
  final emailController = TextEditingController();
  final pwdController = TextEditingController();

  MajorInformationFormScreen({super.key});

  @override
  State<MajorInformationFormScreen> createState() =>
      _MajorInformationFormScreenState();
}

class _MajorInformationFormScreenState
    extends State<MajorInformationFormScreen> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Scaffold(
            appBar:
                BaseAppBar(appBar: AppBar(), title: "학과 정보 수정", center: true),
            body: Container(
              color: Colors.white,
              padding: const EdgeInsets.fromLTRB(50, 30, 50, 30),
              margin: const EdgeInsets.only(bottom: 30),
              child: SingleChildScrollView(
                child: Column(
                    children: [MainColorButtonWidget(title: '학과 정보 수정', onPressed: () => {print('로그인')})]),
              ),
            )));
  }
}
