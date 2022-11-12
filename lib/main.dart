import 'package:flutter/material.dart';
import 'package:pr/app_router.dart';

import 'url_page.dart';
import 'core/db/data_base_helper.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DataBaseHelper.instance.init();
  runApp(App());
}

class App extends StatelessWidget {
  App({Key? key}) : super(key: key);
  final AppRouter router = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        progressIndicatorTheme: const ProgressIndicatorThemeData(
          color: Colors.indigo,
        ),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Colors.indigo,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            textStyle: const TextStyle(color: Colors.white),
            backgroundColor: Colors.indigo,
          ),
        ),
      ),
      themeMode: ThemeMode.dark,
      initialRoute: UrlPage.signIn,
      onGenerateRoute: router.generateRouter,
    );
  }
}
