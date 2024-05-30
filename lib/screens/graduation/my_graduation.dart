import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:granity/data/graduation.dart';
import 'package:granity/data/noticeList.dart';
import 'package:granity/design/colors.dart';
import 'package:granity/widgets/BaseAppBar.dart';
import 'package:granity/widgets/badgeWigets/approval_badge.dart';
import 'package:granity/widgets/badgeWigets/not_approval_badge.dart';
import 'package:granity/widgets/badgeWigets/submit_badge.dart';
import 'package:granity/widgets/buttonWidgets/base_button.dart';
import 'package:granity/widgets/buttonWidgets/gray_small_button.dart';
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
            backgroundColor: Colors.white,
            appBar: showAppBar
                ? BaseAppBar(appBar: AppBar(), title: "나의 졸업관리", center: true)
                : null,
            body: SafeArea(
              child: Container(
                color: ColorStyles.lightGrayColor,
                child: Column(children: [
                  Container(
                    color: Colors.white,
                    padding: const EdgeInsets.fromLTRB(50, 30, 50, 30),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text.rich(
                            TextSpan(
                              text: '학교 졸업까지\n',
                              style: TextStyle(
                                  fontSize: 27,
                                  fontWeight: FontWeight.w500,
                                  color: ColorStyles.textBlackColor),
                              children: <TextSpan>[
                                TextSpan(text: '졸업요건이'),
                                TextSpan(
                                    text: ' 4개 ',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                TextSpan(text: '남았어요!'),
                              ],
                            ),
                          ),
                          Container(
                              alignment: Alignment.centerLeft,
                              margin: const EdgeInsets.only(top: 10),
                              child: GraySmallButtonWidget(
                                title: "컴퓨터과학과 졸업요건",
                                onPressed: () async {
                                  final result = await context.push('/notice');
                                },
                              )),
                        ]),
                  ),
                  Expanded(
                      child: Container(
                          margin: const EdgeInsets.all(30),
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15))),
                          child: ListView.separated(
                              shrinkWrap: true,
                              separatorBuilder:
                                  (BuildContext context, int index) =>
                                      const Divider(
                                        color: ColorStyles.lightGrayColor,
                                      ),
                              // physics: const NeverScrollableScrollPhysics(),
                              padding: const EdgeInsets.all(20),
                              // shrinkWrap: true,
                              itemCount: graduation_test_data.length,
                              itemBuilder: (BuildContext context, int index) {
                                dynamic graduation =
                                    graduation_test_data[index];
                                return Container(
                                    alignment: Alignment.center,
                                    child: BaseButtonWidget(
                                        padding: const EdgeInsets.all(10),
                                        onPressed: () => print("눌렀당"),
                                        Widget: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              margin: const EdgeInsets.only(
                                                  right: 15),
                                              child: graduation['status'] == 0
                                                  ? SubmitBadgeWidget()
                                                  : graduation['status'] == 1
                                                      ? ApprovalBadgeWidget()
                                                      : NotApprovalBadgeWidget(),
                                            ),
                                            Expanded(
                                                child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  graduation['contents'],
                                                  style: const TextStyle(
                                                      color: ColorStyles
                                                          .textBlackColor,
                                                      fontSize: 17,
                                                      fontWeight:
                                                          FontWeight.w700),
                                                ),
                                                Text(
                                                  graduation['created_at'],
                                                  style: const TextStyle(
                                                    color: ColorStyles
                                                        .textBodyColor,
                                                    fontSize: 14,
                                                  ),
                                                )
                                              ],
                                            ))
                                          ],
                                        )));
                              })))
                ]),
              ),
            )));
  }
}
