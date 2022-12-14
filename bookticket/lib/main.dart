import 'package:bookticket/screens/bottom_bar.dart';
import 'package:bookticket/utils/app_styles.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'JackszPlay Bookticket',
      theme: ThemeData(primaryColor: primary),
      home: const BottomBar(),
    );
  }
}
