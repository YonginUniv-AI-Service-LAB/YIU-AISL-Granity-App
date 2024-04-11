import 'package:flutter/material.dart';
import 'package:granity/widgets/BaseAppBar.dart';

class TestBasicListViewScreen extends StatefulWidget {
  const TestBasicListViewScreen({super.key});

  @override
  State<TestBasicListViewScreen> createState() =>
      _TestBasicListViewScreenState();
}

class _TestBasicListViewScreenState extends State<TestBasicListViewScreen> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Scaffold(
            appBar: BaseAppBar(
                appBar: AppBar(), title: "Basic ListView", center: true),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              // children: [Expanded(child: listview_basic())],
              // children: [Expanded(child: listview_builder())],
              // children: [Expanded(child: listview_separated())],
              children: [Expanded(child: gridview_basic())],
            )));
  }
}

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
