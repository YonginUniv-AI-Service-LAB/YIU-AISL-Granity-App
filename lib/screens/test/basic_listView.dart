import 'dart:math';

import 'package:flutter/material.dart';
import 'package:granity/design/colors.dart';
import 'package:granity/widgets/BaseAppBar.dart';
import 'package:granity/widgets/buttonWidgets/main_color_button.dart';

class TestBasicListViewScreen extends StatefulWidget {
  const TestBasicListViewScreen({super.key});

  @override
  State<TestBasicListViewScreen> createState() =>
      _TestBasicListViewScreenState();
}

class _TestBasicListViewScreenState extends State<TestBasicListViewScreen> {
  List<int> numbers = <int>[1, 2, 3, 4, 5, 6, 7];
  @override
  Widget build(BuildContext context) {
    final showAppBar = Navigator.canPop(context);
    return GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Scaffold(
            appBar: showAppBar
                ? BaseAppBar(appBar: AppBar(), title: "매칭리스트", center: true)
                : null,
            backgroundColor: ColorStyles.lightGrayColor,
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Expanded(child: MatchingMentoList())],
              // children: [Expanded(child: listview_basic())],
              // children: [Expanded(child: listview_builder())],
              // children: [Expanded(child: listview_separated())],
              // children: [Expanded(child: gridview_basic())],
            )));
  }
}

Widget MatchingMentoList() {
  return GridView.builder(
      padding: const EdgeInsets.fromLTRB(15, 15, 15, 15),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 15,
        crossAxisSpacing: 15,
      ),
      itemCount: 50,
      itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0xffffffff)),
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(125),
                child: Image.network(
                  'https://cdn.pixabay.com/photo/2016/11/22/23/14/terrier-1851108_1280.jpg',
                  width: 55,
                  height: 55,
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 5),
                child: const Column(children: [
                  Text(
                    '누들잉',
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: ColorStyles.textBlackColor),
                  ),
                  // const Text(
                  //   '선물 받을 사람 여기여기 붙어라',
                  //   style: TextStyle(color: ColorStyles.textBodyColor),
                  // ),
                  Text(
                    '자바 / 자바스프링',
                    style: TextStyle(color: ColorStyles.textBodyColor),
                  ),
                ]),
              )
            ],
          ),
        );
      });
}

// 과제: 버튼 누르면 순서 바뀜
// Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 MainColorButtonWidget(
//                   title: '버튼 누르면 순서 바뀜',
//                   onPressed: () {
//                     setState(() {
//                       int num = numbers.removeAt(0); // 첫 번째 요소를 제거 => num에 저장
//                       numbers.add(num); // 제거된 첫 번째 요소 => 리스트 마지막에 추가
//                     });
//                     // final result = await context.push('/test/listview/basic');
//                   },
//                 ),
//                 Expanded(
//                     child: ListView.builder(
//                         padding: const EdgeInsets.all(8),
//                         itemCount: numbers.length,
//                         itemBuilder: (BuildContext context, int index) {
//                           return SizedBox(
//                             width: 500,
//                             height: 50,
//                             child: Center(
//                                 child: Text(
//                               ' ${numbers[index]}',
//                               style: const TextStyle(
//                                   fontWeight: FontWeight.bold, fontSize: 30),
//                             )),
//                           );
//                         }))
//               ],
//               // children: [Expanded(child: listview_basic())],
//               // children: [Expanded(child: listview_builder())],
//               // children: [Expanded(child: listview_separated())],
//               // children: [Expanded(child: gridview_basic())],
//             )

// ListView.builder 예시
// Widget listview_homework() {
//   return ListView.builder(
//       padding: const EdgeInsets.all(8),
//       itemCount: numbers.length,
//       itemBuilder: (BuildContext context, int index) {
//         return SizedBox(
//           width: 500,
//           height: 50,
//           child: Center(child: Text(' ${numbers[index]}')),
//         );
//       });
// }

// ListView 기본 사용 예시
Widget listview_basic() {
  return ListView(
    padding: const EdgeInsets.all(8),
    children: <Widget>[
      Container(
        height: 50,
        color: Colors.amber[600],
        child: const Center(child: Text('Entry A')),
      ),
      Container(
        height: 50,
        color: Colors.amber[500],
        child: const Center(child: Text('Entry B')),
      ),
      Container(
        height: 50,
        color: Colors.amber[100],
        child: const Center(child: Text('Entry C')),
      ),
    ],
  );
}

final List<String> entries = <String>['A', 'B', 'C'];
final List<int> colorCodes = <int>[600, 500, 100];

// ListView.builder 예시
Widget listview_builder() {
  return ListView.builder(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.all(8),
      itemCount: entries.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          width: 500,
          height: 50,
          color: Colors.amber[colorCodes[index]],
          child: Center(child: Text('Entry ${entries[index]}')),
        );
      });
}

// ListView.builder 예시
Widget listview_separated() {
  return ListView.separated(
    padding: const EdgeInsets.all(8),
    itemCount: entries.length,
    itemBuilder: (BuildContext context, int index) {
      return Container(
        height: 100,
        color: Colors.amber[colorCodes[index]],
        child: Center(child: Text('Entry ${entries[index]}')),
      );
    },
    separatorBuilder: (BuildContext context, int index) => const Divider(
      height: 20.0,
      color: Colors.blue,
    ),
  );
}

// gridview_basic 예시
Widget gridview_basic() {
  return GridView.count(
    primary: false,
    padding: const EdgeInsets.all(20),
    crossAxisSpacing: 10,
    mainAxisSpacing: 10,
    crossAxisCount: 5,
    children: <Widget>[
      Container(
        padding: const EdgeInsets.all(8),
        color: Colors.teal[100],
        child: const Text("He'd have you all unravel at the"),
      ),
      Container(
        padding: const EdgeInsets.all(8),
        color: Colors.teal[200],
        child: const Text('Heed not the rabble'),
      ),
      Container(
        padding: const EdgeInsets.all(8),
        color: Colors.teal[300],
        child: const Text('Sound of screams but the'),
      ),
      Container(
        padding: const EdgeInsets.all(8),
        color: Colors.teal[400],
        child: const Text('Who scream'),
      ),
      Container(
        padding: const EdgeInsets.all(8),
        color: Colors.teal[500],
        child: const Text('Revolution is coming...'),
      ),
      Container(
        padding: const EdgeInsets.all(8),
        color: Colors.teal[600],
        child: const Text('Revolution, they...'),
      ),
      Container(
        padding: const EdgeInsets.all(8),
        color: Colors.teal[100],
        child: const Text("He'd have you all unravel at the"),
      ),
      Container(
        padding: const EdgeInsets.all(8),
        color: Colors.teal[200],
        child: const Text('Heed not the rabble'),
      ),
      Container(
        padding: const EdgeInsets.all(8),
        color: Colors.teal[300],
        child: const Text('Sound of screams but the'),
      ),
      Container(
        padding: const EdgeInsets.all(8),
        color: Colors.teal[400],
        child: const Text('Who scream'),
      ),
      Container(
        padding: const EdgeInsets.all(8),
        color: Colors.teal[500],
        child: const Text('Revolution is coming...'),
      ),
      Container(
        padding: const EdgeInsets.all(8),
        color: Colors.teal[600],
        child: const Text('Revolution, they...'),
      ),
    ],
  );
}
