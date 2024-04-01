import 'package:flutter/material.dart';
import 'package:granity/widgets/BaseAppBar.dart';

class TestErrorListViewScreen extends StatefulWidget {
  const TestErrorListViewScreen({super.key});

  @override
  State<TestErrorListViewScreen> createState() =>
      _TestErrorListViewScreenState();
}

class _TestErrorListViewScreenState extends State<TestErrorListViewScreen> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Scaffold(
            appBar: BaseAppBar(
                appBar: AppBar(), title: "Error ListView", center: true),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[listview_example()],
            )));
  }
}

Widget listview_example() {
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
