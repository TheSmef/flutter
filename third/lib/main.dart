import 'dart:math';

import 'package:third/screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(const App());
}


class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Screen(),
      theme: ThemeData(),
      darkTheme: ThemeData(),
    );
  }
}
