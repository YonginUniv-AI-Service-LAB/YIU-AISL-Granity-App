import 'package:flutter/material.dart';
import 'package:granity/data/noticeList.dart';
import 'package:granity/design/colors.dart';
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          '변미현님 졸업요건',
                          textWidthBasis: TextWidthBasis.longestLine,
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                              color: ColorStyles.textBlackColor),
                        ),
                        Container(
                          alignment: Alignment.centerRight,
                          child: TextButton(
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  foregroundColor: ColorStyles.textDisableColor,
                                  backgroundColor: ColorStyles.lightGrayColor,
                                  elevation: 0),
                              onPressed: () => print('hello'),
                              child: const Text(
                                '졸업요건 4개',
                                style: TextStyle(
                                  color: ColorStyles.textBodyColor,
                                  fontWeight: FontWeight.bold,
                                ),
                              )),
                        ),
                        ListView.builder(
                            shrinkWrap: true,
                            itemCount: notices_test_data.length,
                            itemBuilder: (BuildContext context, int index) {
                              dynamic notice = notices_test_data[index];
                              return Container(
                                  // decoration: const BoxDecoration(
                                  //   boxShadow: <BoxShadow>[
                                  //     BoxShadow(
                                  //       color: Colors.black54,
                                  //       blurRadius: 20.0,
                                  //       spreadRadius: -20.0,
                                  //       offset: Offset(0.0, 25.0),
                                  //     )
                                  //   ],
                                  //   color: Colors.red,
                                  // ),
                                  padding: const EdgeInsets.only(bottom: 20),
                                  child: Row(
                                    children: [
                                      Column(
                                        children: [
                                          TextButton(
                                              style: ElevatedButton.styleFrom(
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10)),
                                                  foregroundColor: ColorStyles
                                                      .textDisableColor,
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  elevation: 0,
                                                  padding:
                                                      const EdgeInsets.all(20)),
                                              onPressed: () => print('hello'),
                                              child: (const Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    '전공 자격증 취득(기사 이상) 1개',
                                                    style: TextStyle(
                                                        color: ColorStyles
                                                            .textBlackColor,
                                                        fontSize: 17,
                                                        fontWeight:
                                                            FontWeight.w700),
                                                  ),
                                                  Text(
                                                    '2024-04-11',
                                                    style: TextStyle(
                                                      color: ColorStyles
                                                          .textBodyColor,
                                                      fontSize: 14,
                                                    ),
                                                  )
                                                ],
                                              )))
                                        ],
                                      ),
                                      Center(
                                        child: Container(
                                          width: 20,
                                          height: 20,
                                          margin:
                                              const EdgeInsets.only(left: 20),
                                          decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: ColorStyles.statusYellow,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ));
                            })
                      ]),
                ),
              ),
            )));
  }
}
