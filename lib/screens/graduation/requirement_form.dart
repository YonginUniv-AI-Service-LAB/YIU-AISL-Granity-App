import 'package:flutter/material.dart';
import 'package:granity/widgets/BaseAppBar.dart';
import 'package:granity/widgets/buttonWidgets/main_color_button.dart';

const List<String> list = <String>['One', 'Two', 'Three', 'Four'];

class RequirementFormScreen extends StatefulWidget {
  final emailController = TextEditingController();
  final pwdController = TextEditingController();

  RequirementFormScreen({super.key});

  @override
  State<RequirementFormScreen> createState() => _RequirementFormScreenState();
}

class _RequirementFormScreenState extends State<RequirementFormScreen> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Scaffold(
            appBar: BaseAppBar(appBar: AppBar(), title: "졸업요건", center: true),
            body: Container(
              color: Colors.white,
              padding: const EdgeInsets.fromLTRB(50, 30, 50, 30),
              margin: const EdgeInsets.only(bottom: 30),
              child: SingleChildScrollView(
                child: Column(children: [MainColorButtonWidget(title: '졸업요건', onPressed: () => {print('로그인')})]),
              ),
            )));
  }
}
