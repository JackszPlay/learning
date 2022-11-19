import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:play_todo_app/constants/colors.dart';
import 'package:play_todo_app/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Play TodoApp',
      theme: ThemeData(
        primaryColor: tdBGColor,
        backgroundColor: tdBGColor,
      ),
      home: const HomePage(),
    );
  }
}
