// import 'package:flutter/material.dart';
// import 'package:granity/design/colors.dart';

// // 가로로 긴 기본 버튼 ex) 회원가입, 로그인
// Container BasicAlertWidget({
//   required context,
//   required Function() onPressed,
// }) {
//    showDialog(
//         context: context,
//         //barrierDismissible - Dialog를 제외한 다른 화면 터치 x
//         barrierDismissible: false,
//         builder: (BuildContext context) {
//           return AlertDialog(
//             // RoundedRectangleBorder - Dialog 화면 모서리 둥글게 조절
//             shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(10.0)),
//             //Dialog Main Title
//             title: Column(
//               children: <Widget>[
//                 new Text("Dialog Title"),
//               ],
//             ),
//             //
//             content: Column(
//               mainAxisSize: MainAxisSize.min,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: <Widget>[
//                 Text(
//                   "Dialog Content",
//                 ),
//               ],
//             ),
//             actions: <Widget>[
//               new FlatButton(
//                 child: new Text("확인"),
//                 onPressed: () {
//                   Navigator.pop(context);
//                 },
//               ),
//             ],
//           );
//         })
// }
