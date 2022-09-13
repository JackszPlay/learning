import 'package:flutter/material.dart';
import 'package:footwear_app_ui/pages/item_page.dart';
import 'pages/home_page.dart';
import 'pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'JackszPlay App UI',
      theme: ThemeData(scaffoldBackgroundColor: const Color(0xFFCEDDEE)),
      routes: {
        "/": (context) => const LoginPage(),
        "homePage": (context) => const HomePage(),
        "itemPage": (context) => const ItemPage(),
      },
    );
  }
}
