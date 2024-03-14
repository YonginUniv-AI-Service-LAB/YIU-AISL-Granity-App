import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:granity/routes.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'colors.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: '.env');
  // ex) dotenv.load(fileName: 'assets/config/.env')
  runApp(ProviderScope(child: MyApp()));
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
      theme: ThemeData(primarySwatch: Colors.green),
      routes: routes,
      debugShowCheckedModeBanner: false,
    );
  }
}
