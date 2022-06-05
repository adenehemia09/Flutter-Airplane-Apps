import 'package:airplace_apps/ui/main_page.dart';
import 'package:airplace_apps/ui/pages/bonus_page.dart';
import 'package:airplace_apps/ui/pages/get_started_page.dart';
import 'package:airplace_apps/ui/pages/sign_up_page.dart';
import 'package:airplace_apps/ui/splach_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplachPage(),
        'get-started': (context) => GetStartedPage(),
        'sign-up': (context) => SignUp(),
        '/bonus': (context) => BonusPage(),
        '/main': (context) => MainPage(),
      },
    );
  }
}
