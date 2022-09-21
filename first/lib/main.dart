import 'dart:math';

import 'package:first/screen1.dart';
import 'package:first/screen2.dart';
import 'package:first/screen3.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}


class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const Screen1(),
      // home: const Screen2(),
      // home: const Screen3(),
      theme: ThemeData(),
      darkTheme: ThemeData(),
    );
  }
}
