import 'package:flutter/material.dart';
import 'package:granity/widgets/BaseAppBar.dart';

const List<String> list = <String>['One', 'Two', 'Three', 'Four'];

class UserInformationScreen extends StatefulWidget {
  final emailController = TextEditingController();
  final pwdController = TextEditingController();

  UserInformationScreen({super.key});

  @override
  State<UserInformationScreen> createState() => _UserInformationScreenState();
}

class _UserInformationScreenState extends State<UserInformationScreen> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Scaffold(
            appBar: BaseAppBar(appBar: AppBar(), title: "내 정보", center: true),
            body: Container(
              color: Colors.white,
              padding: const EdgeInsets.fromLTRB(50, 30, 50, 30),
              margin: const EdgeInsets.only(bottom: 30),
              child: const SingleChildScrollView(
                child: Column(children: [
                  Row(
                    children: [
                      Icon(
                        Icons.favorite,
                        color: Colors.pink,
                        size: 50.0,
                      )
                    ],
                  )
                ]),
              ),
            )));
  }
}
