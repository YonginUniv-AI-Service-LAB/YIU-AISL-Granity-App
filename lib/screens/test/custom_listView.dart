import 'package:flutter/material.dart';
import 'package:granity/widgets/BaseAppBar.dart';

/// Flutter code sample for a [ListView.custom] using the `findChildIndexCallback` argument.

class TestCustomListViewScreen extends StatefulWidget {
  const TestCustomListViewScreen({super.key});

  @override
  State<TestCustomListViewScreen> createState() =>
      _TestCustomListViewScreenState();
}

class _TestCustomListViewScreenState extends State<TestCustomListViewScreen> {
  List<String> items = <String>['1', '2', '3', '4', '5'];

  void _reverse() {
    setState(() {
      items = items.reversed.toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          BaseAppBar(appBar: AppBar(), title: "Custom ListView", center: true),
      body: SafeArea(
        minimum: const EdgeInsets.all(50),
        child: ListView.custom(
          childrenDelegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return KeepAliveItem(
                data: items[index],
                key: ValueKey<String>(items[index]),
              );
            },
            childCount: items.length,
            findChildIndexCallback: (Key key) {
              final ValueKey<String> valueKey = key as ValueKey<String>;
              final String data = valueKey.value;
              final int index = items.indexOf(data);
              if (index >= 0) {
                return index;
              }
              return null;
            },
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextButton(
              onPressed: () => _reverse(),
              child: const Text('Reverse items'),
            ),
          ],
        ),
      ),
    );
  }
}

class KeepAliveItem extends StatefulWidget {
  const KeepAliveItem({
    required Key key,
    required this.data,
  }) : super(key: key);

  final String data;

  @override
  State<KeepAliveItem> createState() => _KeepAliveItemState();
}

class _KeepAliveItemState extends State<KeepAliveItem>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Text(widget.data);
  }
}
