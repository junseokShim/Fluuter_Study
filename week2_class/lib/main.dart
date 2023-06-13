import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:week2_class/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // App은 무조건 MaterialApp()으로 시작해야함
      debugShowCheckedModeBanner: false,
      home: HomePage(), //home --> named parameter라고도 함
    );
  }
}
