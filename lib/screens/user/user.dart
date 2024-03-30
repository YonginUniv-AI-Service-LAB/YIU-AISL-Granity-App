import 'package:flutter/material.dart';
import 'package:granity/design/colors.dart';

class UserScreen extends StatefulWidget {
  final emailController = TextEditingController();
  final pwdController = TextEditingController();

  UserScreen({super.key});

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  final postList = [
    {
      "title": "Title 1",
      "color": Colors.amber,
    },
    {
      "title": "Title 2",
      "color": Colors.lightBlue,
    },
    {
      "title": "Title 3",
      "color": Colors.redAccent,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Scaffold(
            appBar: AppBar(
                centerTitle: false,
                title: Container(
                  margin: const EdgeInsets.only(left: 20, right: 20),
                  child: const Text(
                    '마이페이지',
                    style: TextStyle(
                      fontFamily: 'Pretendard',
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: ColorStyles.textBlackColor,
                    ),
                  ),
                )),
            body: SafeArea(
                child: Container(
              color: Colors.white,
              padding: const EdgeInsets.fromLTRB(50, 30, 50, 30),
              margin: const EdgeInsets.only(bottom: 30),
              child: SingleChildScrollView(
                  child: Column(children: [
                Row(
                  children: [
                    const Center(
                      child: Icon(
                        Icons.account_circle,
                        color: ColorStyles.textBodyColor,
                        size: 60,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 20),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '202033013',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: ColorStyles.textBodyColor),
                          ),
                          Text(
                            '변미현',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: ColorStyles.textBlackColor),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ])),
            ))));
  }

// const _navItems = [
//   ListTile(
//     leading: Icons.post_add,
//     title: '나의 게시글',
//   ),
//   NavItem(
//     index: 1,
//     activeIcon: Icons.dashboard,
//     inactiveIcon: Icons.dashboard_outlined,
//     label: '게시판',
//   ),
//   NavItem(
//     index: 2,
//     activeIcon: Icons.school,
//     inactiveIcon: Icons.school_outlined,
//     label: '졸업',
//   ),
//   NavItem(
//     index: 3,
//     activeIcon: Icons.person,
//     inactiveIcon: Icons.person_outline,
//     label: 'MY',
//   ),
// ];
}
