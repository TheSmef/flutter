import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/click_cubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ClickCubit(),
      child: BlocBuilder<ClickCubit, ClickState>(
        builder: (context, state) {
          return MaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData.light(),
            darkTheme: ThemeData.dark(),
            home: const MyHomePage(),
            themeMode: state is WhiteTheme ? ThemeMode.light : ThemeMode.dark,
          );
        },
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'You have pushed the button this many times:',
              ),
              BlocBuilder<ClickCubit, ClickState>(builder: (context, state) {
                return Text(
                  context.read<ClickCubit>().count.toString(),
                  style: Theme.of(context).textTheme.headline4,
                );
              }),
            ],
          ),
        ),
        floatingActionButton: Padding(
          padding: EdgeInsets.all(20),
          child: Row(
            children: [
              FloatingActionButton(
                onPressed: () {
                  context.read<ClickCubit>().Click();
                },
                tooltip: 'Increment',
                child: const Icon(Icons.add),
              ),
              FloatingActionButton(
                onPressed: () {
                  context.read<ClickCubit>().ClickMinus();
                },
                tooltip: 'Increment',
                child: const Icon(Icons.remove),
              ),
              FloatingActionButton(
                onPressed: () {
                  context.read<ClickCubit>().SwapThere();
                },
                tooltip: 'Increment',
                child: const Icon(Icons.swap_calls),
              ),
            ],
          ),
        )
        // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
