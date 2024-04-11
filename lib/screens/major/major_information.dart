import 'package:accordion/accordion.dart';
import 'package:flutter/material.dart';
import 'package:granity/data/majorInfo.dart';
import 'package:granity/design/colors.dart';
import 'package:granity/widgets/BaseAppBar.dart';

class MajorInformationScreen extends StatefulWidget {
  const MajorInformationScreen({super.key});

  @override
  State<MajorInformationScreen> createState() => _MajorInformationScreenState();
}

class _MajorInformationScreenState extends State<MajorInformationScreen> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Scaffold(
            appBar: BaseAppBar(appBar: AppBar(), title: "학과 소개", center: true),
            body: Container(
              color: Colors.white,
              margin: const EdgeInsets.only(bottom: 30),
              child: SingleChildScrollView(
                padding: const EdgeInsets.fromLTRB(50, 30, 50, 30),
                child: Column(
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
                      Text(
                        majorInfo['major']['slogan']!,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            color: ColorStyles.appMainColor,
                            fontWeight: FontWeight.w700,
                            fontSize: 15),
                      ),
                      Text(
                        majorInfo['major']['greetings']!,
                        style: const TextStyle(
                            color: ColorStyles.textBlackColor,
                            fontWeight: FontWeight.w500,
                            fontSize: 15),
                      ),
                      Accordion(
                          disableScrolling: true,
                          paddingListHorizontal: 0,
                          scaleWhenAnimating: false,
                          children: [
                            AccordionSection(
                              rightIcon: const Icon(
                                Icons.keyboard_arrow_down,
                                color: ColorStyles.textBodyColor,
                                size: 30,
                              ),
                              isOpen: true,
                              header: const Text(
                                '교수진',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: ColorStyles.textBlackColor),
                              ),
                              headerBackgroundColor: Colors.transparent,
                              contentBorderWidth: 0,
                              content: Expanded(child: view_professor()),
                            ),
                          ])
                    ]),
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
                    '${majorInfo['professor'][index]['name']}',
                    style: const TextStyle(
                        color: ColorStyles.textBodyColor,
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