import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:list/cubit/list_elements_cubit.dart';

void main() {
  runApp(const MyApp());
}

List<String> list = <String>[];

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ListElementsCubit(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MyHomePage(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _increment() {
    setState(() {
      context.read<ListElementsCubit>().ElementAdd();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: BlocBuilder<ListElementsCubit, ListElementsState>(
              builder: (context, state) {
                int size = list.length;
                if (state is CountedSize) {
                  return ListView.builder(
                    itemBuilder: (context, index) {
                      return Container(height: 30, width: 30, color: Colors.blueAccent, child: Center(child: Text(list.elementAt(index))),);
                      
                    },
                    itemCount: size,
                  );
                }
                return const Text("Элементов нету");
              },
            )
        ),
      floatingActionButton: Padding(
        padding: EdgeInsets.all(20),
        child: Row(
          children: [
            FloatingActionButton(
              onPressed: () {
                _increment();
              },
              tooltip: 'Increment',
              child: const Icon(Icons.add),
            ),
            FloatingActionButton(
              onPressed: () {
                if (list.isEmpty) {
                  return;
                }
                list.removeLast();
                  context
                      .read<ListElementsCubit>()
                      .ElementRemoved(list.length);
              },
              tooltip: 'Increment',
              child: const Icon(Icons.remove),
            ),
          ],
        ),
      )
    );
  }
}
