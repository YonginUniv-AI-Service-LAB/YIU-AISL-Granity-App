import 'package:flutter/material.dart';
import 'package:granity/design/colors.dart';
import 'package:granity/widgets/BaseAppBar.dart';

class NoticeDetailScreen extends StatefulWidget {
  dynamic notice;
  final emailController = TextEditingController();
  final pwdController = TextEditingController();

  NoticeDetailScreen({super.key, required this.notice});

  @override
  State<NoticeDetailScreen> createState() => _NoticeDetailScreenState();
}

class _NoticeDetailScreenState extends State<NoticeDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Scaffold(
            appBar: BaseAppBar(appBar: AppBar(), title: "공지사항", center: true),
            body: Container(
              color: Colors.white,
              padding: const EdgeInsets.fromLTRB(50, 30, 50, 30),
              margin: const EdgeInsets.only(bottom: 30),
              child: SingleChildScrollView(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      widget.notice['category'] == "공지"
                          ? Text(
                              widget.notice['category'],
                              style: const TextStyle(
                                  color: ColorStyles.appMainColor,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600),
                            )
                          : Text(
                              widget.notice['category'],
                              style: const TextStyle(
                                  color: ColorStyles.statusYellow,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600),
                            ),
                      Text(
                        widget.notice['title'],
                        style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: ColorStyles.textBlackColor),
                      ),
                      Text(
                        widget.notice['contents'],
                        style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: ColorStyles.textBodyColor),
                      ),
                      Text(widget.notice['created_at'])
                    ]),
              ),
            )));
  }
}
