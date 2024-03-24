import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:granity/design/colors.dart';
import 'package:granity/widgets/BaseAppBar.dart';

const List<String> list = <String>['One', 'Two', 'Three', 'Four'];

class BoardScreen extends StatefulWidget {
  final emailController = TextEditingController();
  final pwdController = TextEditingController();

  BoardScreen({super.key});

  @override
  State<BoardScreen> createState() => _BoardScreenState();
}

class _BoardScreenState extends State<BoardScreen> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    final showAppBar = Navigator.canPop(context);
    return GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Scaffold(
            appBar: showAppBar
                ? BaseAppBar(appBar: AppBar(), title: "게시판", center: true)
                : null,
            body: SafeArea(
              child: Container(
                color: Colors.white,
                padding: const EdgeInsets.fromLTRB(50, 30, 50, 30),
                margin: const EdgeInsets.only(bottom: 30),
                child: SingleChildScrollView(
                  child: Column(children: [
                    ElevatedButton(
                      style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll<Color>(
                            ColorStyles.appMainColor),
                      ),
                      onPressed: () async {
                        final result = await context.push('/board');
                        print(result);
                      },
                      child: const Text(
                        '회원가입',
                        style: TextStyle(color: Colors.white),
                      ),
                    )
                  ]),
                ),
              ),
            )));
  }
}
