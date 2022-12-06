import 'package:flutter/material.dart';

class Screen extends StatelessWidget {
  const Screen({super.key, required this.count});
  final int count;

  @override
  Widget build(BuildContext context) {
    final arguments =
        (ModalRoute.of(context)?.settings.arguments) as List<Object>;
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          const Expanded(child: SizedBox()),
          Center(child: Text('Логин - ${arguments[1]}; Количество нажатий - ${arguments[0]}', textAlign: TextAlign.center,)),
          const Expanded(child: SizedBox()),
        ],
      )
    );
  }
}
