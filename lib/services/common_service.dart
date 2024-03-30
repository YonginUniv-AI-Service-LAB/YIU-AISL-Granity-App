import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class CommonService {
  Dio dio = Dio(BaseOptions(
    baseUrl: '${dotenv.env['BASE_URL']}',
  ));

  // 회원가입 이메일 인증코드 전송
  Future<int> sendAuthCodeToEmail() async {
    try {
      var response =
          await dio.get('${dotenv.env['API_JOIN_EMAIL_AUTHENTICATION']}');
      // var users = (response.data as List);
      // List<User> allUser =
      //     users.map((userData) => User.fromJson(userData)).toList();
      // print(allUser);
      if (response.statusCode == 200) {
        return response.data;
      }
      return 0;
    } on DioError catch (e) {
      return Future.error(e.message.toString());
    }
  }
}
