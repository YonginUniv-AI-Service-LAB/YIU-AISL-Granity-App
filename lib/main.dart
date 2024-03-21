import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'package:granity/routes.dart';

import 'package:granity/design/colors.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: '.env');
  // ex) dotenv.load(fileName: 'assets/config/.env')
  runApp(const ProviderScope(child: MyApp()));
}

// void main() {
//   runApp(const MyApp());
// }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GRANITY',
      color: ColorStyles.appMainColor,
      theme: ThemeData(
        primaryColor: ColorStyles.appMainColor,
        focusColor: ColorStyles.appMainColor,
        hoverColor: ColorStyles.appMainColor,
        errorColor: ColorStyles.statusRed,
        textSelectionTheme: TextSelectionThemeData(cursorColor: ColorStyles.appMainColor),
        fontFamily: 'Pretendard'
        ),
      routes: routes,
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
