import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:granity/design/colors.dart';
import 'package:granity/routes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: '.env');
  // ex) dotenv.load(fileName: 'assets/config/.env')

  // firebase 서비스 사용
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  // fcm 토큰 요청 및 획득
  String? fcmToken = await FirebaseMessaging.instance.getToken();
  print("===== fcm =====");
  print(fcmToken);
  print("===== fcm =====");
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: routes,
      title: 'GRANITY',
      // home: LoginScreen(),
      color: ColorStyles.appMainColor,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          systemOverlayStyle: SystemUiOverlayStyle(
            // Status bar color
            statusBarColor: Colors.white, // 안드로이드만?? (iOS에서는 아무 변화없음)
            statusBarIconBrightness: Brightness.dark,
            // statusBarBrightness: Brightness.light, // iOS에서 먹히는 설정(검정 글씨로 표시됨)
          ),
        ),
        primaryColor: ColorStyles.appMainColor,
        focusColor: ColorStyles.appMainColor,
        hoverColor: ColorStyles.appMainColor,
        textSelectionTheme:
            const TextSelectionThemeData(cursorColor: ColorStyles.appMainColor),
        fontFamily: 'Pretendard',
      ),
      // routes: routes,
      builder: (context, child) => MediaQuery(
        data: MediaQuery.of(context).copyWith(
          textScaler: const TextScaler.linear(1.0),
        ),
        child: child!,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
