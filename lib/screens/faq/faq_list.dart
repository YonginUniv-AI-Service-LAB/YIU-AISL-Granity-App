import 'package:flutter/material.dart';
import 'package:granity/widgets/BaseAppBar.dart';
import 'package:granity/widgets/buttonWidgets/main_color_button.dart';

const List<String> list = <String>['One', 'Two', 'Three', 'Four'];

class FaqListScreen extends StatefulWidget {
  final emailController = TextEditingController();
  final pwdController = TextEditingController();

  FaqListScreen({super.key});

  @override
  State<FaqListScreen> createState() => _FaqListScreenState();
}

class _FaqListScreenState extends State<FaqListScreen> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Scaffold(
            appBar: BaseAppBar(appBar: AppBar(), title: "FAQ", center: true),
            body: Container(
              color: Colors.white,
              padding: const EdgeInsets.fromLTRB(50, 30, 50, 30),
              margin: const EdgeInsets.only(bottom: 30),
              child: SingleChildScrollView(
                child: Column(children: [MainColorButtonWidget(title: 'FAQ', onPressed: () => {print('로그인')})]),
              ),
            )));
  }
}
