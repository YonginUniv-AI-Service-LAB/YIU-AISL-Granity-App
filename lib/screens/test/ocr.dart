import 'dart:math';

import 'package:flutter/material.dart';
import 'package:granity/widgets/BaseAppBar.dart';
import 'dart:convert';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_dotenv/flutter_dotenv.dart';

class TestOCRScreen extends StatefulWidget {
  const TestOCRScreen({super.key});

  @override
  _TestOCRScreenState createState() => _TestOCRScreenState();
}

class _TestOCRScreenState extends State<TestOCRScreen> {
  String parsedtext = ''; // 추출된 텍스트를 저장할 String 변수
  String filepath = '';

  parsethetext() async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedFile == null) return;
    var bytes = File(pickedFile.path.toString()).readAsBytesSync();
    String img64 = base64Encode(bytes);

    var url = 'https://api.ocr.space/parse/image';
    var payload = {
      "base64Image": "data:image/jpg;base64,${img64.toString()}",
      "language": "kor"
    };
    var header = {"apikey": dotenv.env['OCR_API_KEY'].toString()};

    var post = await http.post(Uri.parse(url), body: payload, headers: header);
    var result = jsonDecode(post.body); // 추출 결과를 받아서 result에 저장
    setState(() {
      parsedtext =
          result['ParsedResults'][0]['ParsedText']; // 추출결과를 다시 parsedtext로 저장
      filepath = pickedFile.path;
    });
  }

  @override
  Widget build(BuildContext context) {
    final imageSize = MediaQuery.of(context).size.width / 4;

    return Scaffold(
        appBar: BaseAppBar(appBar: AppBar(), title: "OCR", center: true),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                constraints: BoxConstraints(
                  minHeight: imageSize,
                  minWidth: imageSize,
                ),
              ),
              Container(
                width: 400,
                height: 200,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  border: Border.all(
                      width: 2, color: Theme.of(context).colorScheme.primary),
                  image: DecorationImage(
                      image: FileImage(File(filepath)), fit: BoxFit.contain),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 30.0),
                alignment: Alignment.center,
                child: const Text(
                  "OCR APP",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 15.0),
              SizedBox(
                  width: MediaQuery.of(context).size.width / 1,
                  height: MediaQuery.of(context).size.height / 15,
                  child: ElevatedButton(
                      onPressed: () => parsethetext(),
                      child: const Text('사진을 선택해주세요',
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w700)))),
              Container(
                height: 30,
              ),
              Container(
                alignment: Alignment.center,
                child: Column(
                  children: <Widget>[
                    const Text(
                      "추출된 텍스트는",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10.0),
                    Text(
                      parsedtext,
                      style: const TextStyle(
                          fontSize: 25, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
