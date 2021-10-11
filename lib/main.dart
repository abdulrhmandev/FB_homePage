import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fb_home_page/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: '',
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,

    );
  }
}

