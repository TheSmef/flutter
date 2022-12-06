import 'package:flutter/material.dart';
import 'package:flutter1/screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  runApp(MyApp(sharedPreferences));
}

class MyApp extends StatelessWidget {
  final SharedPreferences sharedPreferences;
  MyApp(this.sharedPreferences, {super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/secondpage': (context) =>
            Screen(count: sharedPreferences.getInt("counter") ?? 0)
      },
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(
        sharedPreferences,
        title: '',
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final SharedPreferences sharedPreferences;

  const MyHomePage(this.sharedPreferences, {super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController _loginController = TextEditingController();
  int _counter = 0;
  void _incrementCounter() async {
    setState(() {
      _counter++;
    });
    await widget.sharedPreferences.setInt("counter", _counter);
    await widget.sharedPreferences.setString("login", _loginController.text);
  }

  String currenttext = "";
  @override
  void initState() {
    _counter = widget.sharedPreferences.getInt("counter") ?? 0;
    _loginController.text = widget.sharedPreferences.getString("login") ?? '';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(30),
              child: TextFormField(
                controller: _loginController,
                maxLength: 16,
                decoration: const InputDecoration(
                  labelText: 'Логин',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            const Text("Количество нажатий"),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            ElevatedButton(
                onPressed: _incrementCounter, child: const Icon(Icons.add))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          List<Object> args = <Object>[];
          args.add(_counter);
          args.add(_loginController.text);
          Navigator.pushNamed(context, "/secondpage", arguments: args);
        },
        tooltip: 'Increment',
        child: const Icon(Icons.skip_next),
      ),
    );
  }
}
