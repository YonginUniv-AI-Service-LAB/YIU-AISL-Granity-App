import 'package:flutter/material.dart';
import 'package:granity/widgets/BaseAppBar.dart';
import 'package:granity/widgets/buttonWidgets/main_color_button.dart';

const List<String> list = <String>['One', 'Two', 'Three', 'Four'];

class RequirementListScreen extends StatefulWidget {
  final emailController = TextEditingController();
  final pwdController = TextEditingController();

  RequirementListScreen({super.key});

  @override
  State<RequirementListScreen> createState() => _RequirementListScreenState();
}

class _RequirementListScreenState extends State<RequirementListScreen> {
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
                child: Column(children: [
                  MainColorButtonWidget(
                      title: '졸업요건', onPressed: () => {print('로그인')})
                ]),
              ),
            )));
  }
}
