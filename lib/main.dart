import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:granity/design/colors.dart';
import 'package:granity/routes.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: '.env');
  // ex) dotenv.load(fileName: 'assets/config/.env')
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
