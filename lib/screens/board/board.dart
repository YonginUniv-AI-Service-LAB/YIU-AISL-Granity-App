import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:granity/design/colors.dart';
import 'package:granity/widgets/BaseAppBar.dart';
import 'package:granity/data/board.dart';
import 'package:granity/widgets/buttonWidgets/base_button.dart';

class BoardScreen extends StatefulWidget {
  final emailController = TextEditingController();
  final pwdController = TextEditingController();

  BoardScreen({super.key});

  @override
  State<BoardScreen> createState() => _BoardScreenState();
}

class _BoardScreenState extends State<BoardScreen> {
  List<dynamic> filteredItems = [];

  @override
  void initState() {
    filteredItems = board_test_data;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final showAppBar = Navigator.canPop(context);
    return GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Scaffold(
            appBar: showAppBar
                ? BaseAppBar(appBar: AppBar(), title: "게시판", center: true)
                : null,
            body: SafeArea(
              child: Container(
                // color: ColorStyles.lightGrayColor,
                // padding: const EdgeInsets.fromLTRB(50, 30, 50, 30),
                // margin: const EdgeInsets.only(bottom: 30),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(children: [
                        BaseButtonWidget(
                            onPressed: () => print('hello'),
                            backgroundColor: ColorStyles.lightGrayColor,
                            Widget: const Text(
                              '인증글',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: ColorStyles.textBodyColor),
                            )),
                        Flexible(
                            child: Container(
                          // color: ColorStyles.lightGrayColor,
                          margin: const EdgeInsets.only(left: 20),
                          decoration: const BoxDecoration(
                              color: ColorStyles.lightGrayColor,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: TextField(
                            decoration: const InputDecoration(
                                hintText: '제목 검색',
                                border: InputBorder.none,
                                icon: Padding(
                                    padding: EdgeInsets.only(left: 13),
                                    child: Icon(Icons.search))),
                            onChanged: (text) {
                              setState(() {
                                filteredItems = board_test_data
                                    .where((item) => item['title']
                                        .toLowerCase()
                                        .contains(text.toLowerCase()))
                                    .toList();
                              });
                            },
                          ),
                        ))
                      ]),
                    ),
                    Expanded(
                      child: ListView.separated(
                        separatorBuilder: (BuildContext context, int index) =>
                            const Divider(
                          color: ColorStyles.lightGrayColor,
                        ),
                        itemCount: filteredItems.length,
                        itemBuilder: (context, index) {
                          return BaseButtonWidget(
                              onPressed: () => print('hello'),
                              padding:
                                  const EdgeInsets.fromLTRB(30, 20, 30, 20),
                              Widget: Column(children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 15),
                                            child: Row(
                                              children: [
                                                const Padding(
                                                  padding: EdgeInsets.only(
                                                      right: 10),
                                                  child: Icon(
                                                    Icons.account_circle,
                                                    color: ColorStyles
                                                        .textDisableColor,
                                                    size: 30,
                                                  ),
                                                ),
                                                Text(
                                                  filteredItems[index]['nick'],
                                                  style: const TextStyle(
                                                      color: ColorStyles
                                                          .textBodyColor,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 17),
                                                ),
                                              ],
                                            ),
                                          )
                                          // const Text(
                                          //   '컴과 20',
                                          //   style: TextStyle(
                                          //       fontWeight: FontWeight.w600,
                                          //       fontSize: 15),
                                          // )
                                        ]),
                                    if (filteredItems[index]['check'] == 1)
                                      const Icon(
                                        Icons.verified,
                                        color: ColorStyles.appSubColor,
                                        size: 30,
                                      )
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Flexible(
                                        child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          filteredItems[index]['title'],
                                          overflow: TextOverflow.ellipsis,
                                          style: const TextStyle(
                                              color: ColorStyles.textBlackColor,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20),
                                        ),
                                        Text(
                                          filteredItems[index]['contents'],
                                          overflow: TextOverflow.ellipsis,
                                          style: const TextStyle(
                                              color: ColorStyles.textBodyColor,
                                              fontSize: 14),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 10),
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              const Padding(
                                                padding:
                                                    EdgeInsets.only(right: 10),
                                                child: Icon(
                                                  Icons.chat_bubble,
                                                  color: ColorStyles
                                                      .textDisableColor,
                                                  size: 15,
                                                ),
                                              ),
                                              Text(
                                                filteredItems[index]['comments']
                                                    .toString(),
                                                style: const TextStyle(
                                                    fontWeight: FontWeight.w700,
                                                    color: ColorStyles
                                                        .textDisableColor),
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    )),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 30),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        child: Image.network(
                                          'https://cdn.pixabay.com/photo/2016/11/22/23/14/terrier-1851108_1280.jpg',
                                          width: 80,
                                          height: 80,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    )
                                  ],
                                )
                              ]));
                        },
                      ),
                    ),
                  ],
                ),
              ),
            )));
  }
}
