import 'package:accordion/accordion.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:granity/data/majorInfo.dart';
import 'package:granity/design/colors.dart';
import 'package:granity/widgets/BaseAppBar.dart';
import 'package:granity/widgets/textWidgets/base_body_text.dart';
import 'package:granity/widgets/textWidgets/base_label_text.dart';

class MajorInformationScreen extends StatefulWidget {
  const MajorInformationScreen({Key? key}) : super(key: key);
  //  const MajorInformationScreen({super.key});

  @override
  State<MajorInformationScreen> createState() => _MajorInformationScreenState();
}

class _MajorInformationScreenState extends State<MajorInformationScreen> {
  String purpose = '창의·융합 AI+X 전문가 양성';
  String goal =
      '- 이론과 실무 능력을 갖춘 AI·빅데이터 기술 인재 양성\n- Cloud, Web 및 App 등 설계 및 구현 능력을 갖춘 소프트웨어 전문가 양성\n- 올바른 품성과 도덕성을 갖춘 윤리적인 인재 양성\n- 인류와 국가에 기여할 수 있는 AI융합 전문가 양성';
  String afterGraduation =
      'AI·빅데이터 소프트웨어 개발자·연구원, AI·빅데이터 데이터 과학자, AI·빅데이터 서비스 기획자·컨설턴트, 스타트업 창업, CRM, 데이터마이닝, 고객정보분석, 사회여론조사, 인터넷 리서치 관련 업체, 공무원, 대학원 진학 등 국내·외 다양한 산업체, 연구소, 정부 기관의 관련 분야로 진출';
  String certificate =
      '빅데이터분석기사, 정보처리기사, 정보처리산업기사등 국가 자격증 및 민간, 국제 자격증을 취득할 수 있는 교육과정을 운영';
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Scaffold(
            // appBar: BaseAppBar(appBar: AppBar(), title: "학과 소개", center: true),
            body: Container(
          color: Colors.white,
          margin: const EdgeInsets.only(bottom: 30),
          child: SingleChildScrollView(
              padding: const EdgeInsets.fromLTRB(30, 30, 30, 30),
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          majorInfo['major']['major']!,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              color: ColorStyles.textBlackColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 23),
                        ),
                        const Gap(
                          10,
                        ),
                        Text(
                          majorInfo['major']['slogan']!,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              color: ColorStyles.appMainColor,
                              fontWeight: FontWeight.w700,
                              fontSize: 15),
                        ),
                        const Gap(
                          20,
                        ),
                        BaseBodyTextWidget(
                            title: majorInfo['major']['greetings']!),
                        const Gap(30),
                        Align(
                          alignment: Alignment.centerLeft,
                          child:
                              BaseLabelTextWidget(title: '교육목적', fontSize: 18),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: BaseBodyTextWidget(title: purpose),
                        ),
                        const Gap(15),
                        Align(
                          alignment: Alignment.centerLeft,
                          child:
                              BaseLabelTextWidget(title: '교육목표', fontSize: 18),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: BaseBodyTextWidget(title: goal),
                        ),
                        const Gap(15),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: BaseLabelTextWidget(
                              title: '졸업 후 진로', fontSize: 18),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: BaseBodyTextWidget(title: afterGraduation),
                        ),
                        const Gap(15),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: BaseLabelTextWidget(
                              title: '취득가능 자격 및 면허', fontSize: 18),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: BaseBodyTextWidget(title: certificate),
                        ),
                        const Gap(15),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: BaseLabelTextWidget(
                              title: '마 여기에 학과 연혁 넣으라!!!', fontSize: 18),
                        ),
                      ]),
                ],
              )),
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