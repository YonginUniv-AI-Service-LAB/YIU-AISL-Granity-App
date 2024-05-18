import 'package:flutter/material.dart';
import 'package:granity/data/majorInfo.dart';
import 'package:granity/design/colors.dart';
import 'package:granity/widgets/BaseAppBar.dart';
import 'package:granity/widgets/buttonWidgets/main_color_button.dart';

const List<String> list = <String>['One', 'Two', 'Three', 'Four'];

class ProfessorListScreen extends StatefulWidget {
  final emailController = TextEditingController();
  final pwdController = TextEditingController();

  ProfessorListScreen({super.key});

  @override
  State<ProfessorListScreen> createState() => _ProfessorListScreenState();
}

class _ProfessorListScreenState extends State<ProfessorListScreen> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Scaffold(
            // appBar: BaseAppBar(appBar: AppBar(), title: "교수진", center: true),
            body: GridView.builder(
                physics: const ScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10),
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
                })));
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
