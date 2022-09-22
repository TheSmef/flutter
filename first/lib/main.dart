import 'dart:math';

import 'package:first/MeditateMusicSessions.dart';
import 'package:first/MedinowAuthentication.dart';
import 'package:first/MusicSessionPlay.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}


class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MeditateMusicSessions(),
      // home: const MedinowAuthentication(),
      // home: const MusicSessionPlay(),
      theme: ThemeData(),
      darkTheme: ThemeData(),
    );
  }
}
