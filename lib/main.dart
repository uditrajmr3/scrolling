import 'package:flutter/material.dart';
import 'package:scrolling/home.dart';

void main() {
  runApp(const MyScrollApp());
}

class MyScrollApp extends StatelessWidget {
  const MyScrollApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Scrolling Widgets",
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
