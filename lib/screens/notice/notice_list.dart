import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:granity/data/noticeList.dart';
import 'package:granity/widgets/BaseAppBar.dart';
import 'package:granity/widgets/groupWidgets/notice_item.dart';

class NoticeListScreen extends StatefulWidget {
  const NoticeListScreen({super.key});

  @override
  State<NoticeListScreen> createState() => _NoticeListScreenState();
}

class _NoticeListScreenState extends State<NoticeListScreen> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Scaffold(
            appBar: BaseAppBar(appBar: AppBar(), title: "공지사항", center: true),
            body: Container(
                color: Colors.white,
                padding: const EdgeInsets.fromLTRB(40, 30, 40, 30),
                child: ListView.separated(
                    separatorBuilder: (BuildContext ctx, int idx) {
                      return const Divider(
                          // height: 40,
                          );
                    },
                    itemCount: notices_test_data.length,
                    itemBuilder: (BuildContext context, int index) {
                      dynamic notice = notices_test_data[index];
                      return NoticeItemWidget(
                          title: notice['title'],
                          category: notice['category'],
                          created_at: notice['created_at'],
                          onPressed: () =>
                              {context.push('/notice/detail', extra: notice)});
                    }))));
  }
}
