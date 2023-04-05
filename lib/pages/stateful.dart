import 'package:flutter/material.dart';

class StatefulWidgetPage extends StatelessWidget {
  const StatefulWidgetPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: MyApp());
  }
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _countNum = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('StatefulWidgetPage实现计数器')),
      body: Center(
        child: Text(
          '$_countNum',
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _countNum++;
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
