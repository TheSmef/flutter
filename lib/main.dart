import 'package:flutter/material.dart';
import 'package:pr/core/db/data_base_helper.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
     DataBaseHelper.instance.init();
  runApp(const App());

}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const Scaffold(),
      theme: ThemeData(),
      darkTheme: ThemeData(),
    );
  }
}