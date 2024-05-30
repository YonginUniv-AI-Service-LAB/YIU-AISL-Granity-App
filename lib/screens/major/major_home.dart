import 'package:accordion/accordion.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:granity/data/majorInfo.dart';
import 'package:granity/design/colors.dart';
import 'package:granity/screens/major/curriculum_list.dart';
import 'package:granity/screens/major/lab_list.dart';
import 'package:granity/screens/major/major_information.dart';
import 'package:granity/screens/major/professor_list.dart';
import 'package:granity/screens/major/student_council.dart';
import 'package:granity/widgets/BaseAppBar.dart';
import 'package:granity/widgets/textWidgets/base_label_text.dart';
import 'package:granity/widgets/textWidgets/underline_text.dart';

class MajorHomeScreen extends StatefulWidget {
  const MajorHomeScreen({Key? key}) : super(key: key);
  //  const MajorHomeScreen({super.key});

  @override
  State<MajorHomeScreen> createState() => _MajorHomeScreenState();
}

class _MajorHomeScreenState extends State<MajorHomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController = TabController(
    length: 4,
    vsync: this,
    initialIndex: 0,
    animationDuration: const Duration(milliseconds: 200),
  );
  // late TabController _tabController;
  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   //tabcontroller 초기화
  //   //vsync에 this를 넣기위해 initState안에서 초기화
  //   _tabController = new TabController(length: 4, vsync: this);
  // }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Scaffold(
            appBar: BaseAppBar(appBar: AppBar(), title: "학과 소개", center: true),
            body: Container(
              color: Colors.white,
              margin: const EdgeInsets.only(bottom: 30),
              child: DefaultTabController(
                length: 4,
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      child: TabBar(
                          controller: tabController,
                          labelColor: ColorStyles.appMainColor,
                          indicatorColor: ColorStyles.appMainColor,
                          tabs: const [
                            Tab(text: "학과 정보"),
                            Tab(text: "구성원"),
                            Tab(text: "커리큘럼"),
                            Tab(text: "연구실"),
                          ]),
                    ),
                    Expanded(
                      child: TabBarView(
                        controller: tabController,
                        children: [
                          const MajorInformationScreen(),
                          SingleChildScrollView(
                            scrollDirection: Axis.vertical,
                            padding: const EdgeInsets.fromLTRB(30, 30, 30, 30),
                            child: Column(
                              children: [
                                // Align(
                                //   alignment: Alignment.centerLeft,
                                //   child: BaseLabelTextWidget(
                                //       title: '교수진', fontSize: 20),
                                // ),
                                UnderlineTextWidget(
                                    width: 150,
                                    title: '교수진',
                                    fontSize: 20,
                                    color: ColorStyles.appSubColor,
                                    thickness: 3.0),
                                view_professor(),

                                UnderlineTextWidget(
                                    width: 150,
                                    title: '학생회',
                                    fontSize: 20,
                                    color: ColorStyles.appSubColor,
                                    thickness: 3.0),

                                // StudentCouncilScreen()
                              ],
                            ),
                          ),
                          // Container(
                          //   width: 10,
                          //   color: const Color.fromRGBO(91, 91, 91, 1),
                          //   child: const Center(
                          //     child: Text(
                          //       'Tab2',
                          //       style: TextStyle(
                          //           color: Colors.white,
                          //           fontSize: 56,
                          //           fontWeight: FontWeight.bold),
                          //     ),
                          //   ),
                          // ),
                          // Container(
                          //   width: 10,
                          //   color: const Color.fromRGBO(91, 91, 91, 1),
                          //   child: const Center(
                          //     child: Text(
                          //       'Tab2',
                          //       style: TextStyle(
                          //           color: Colors.white,
                          //           fontSize: 56,
                          //           fontWeight: FontWeight.bold),
                          //     ),
                          //   ),
                          // ),
                          Container(
                            width: 10,
                            color: const Color.fromRGBO(91, 91, 91, 1),
                            child: const Center(
                              child: Text(
                                'Tab3',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 56,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          Container(
                            width: 10,
                            color: const Color.fromRGBO(91, 91, 91, 1),
                            child: const Center(
                              child: Text(
                                'Tab4',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 56,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          // CurriculumListScreen(),
                          // LabListScreen(),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )));
  }
}

Widget view_professor() {
  return GridView.builder(
      physics: const ScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10),
      shrinkWrap: true,
      itemCount: majorInfo['professor'].length,
      itemBuilder: (BuildContext context, int index) {
        return TextButton(
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                foregroundColor: ColorStyles.textDisableColor,
                alignment: Alignment.centerLeft,
                backgroundColor: Colors.white,
                elevation: 0),
            onPressed: () => print('hello'),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.account_box,
                    color: ColorStyles.textDisableColor,
                    size: 110,
                  ),
                  Text(
                    '${majorInfo['professor'][index]['name']} 교수',
                    style: const TextStyle(
                        color: ColorStyles.textBlackColor,
                        fontSize: 17,
                        fontWeight: FontWeight.w700),
                  )
                ],
              ),
            ));
      });
}


  // ListView.builder(
  //     shrinkWrap: true,
  //     itemCount: majorInfo['professor'].length,
  //     itemBuilder: (BuildContext context, int index) {
  //       return SizedBox(
  //         width: 100,
  //         height: 50,
  //         child:
  //             Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
  //           const Icon(
  //             Icons.account_box,
  //             color: ColorStyles.textBodyColor,
  //             size: 30,
  //           ),
  //           Text('${majorInfo['professor'][index]['name']}')
  //         ]),
  //       );
  //     });