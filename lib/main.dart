import 'package:flutter/material.dart';
import 'screens/screen1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorSchemeSeed: Colors.teal,
        brightness: Brightness.dark,
      ),
      home: Scaffold(
        appBar: AppBar(
          // leading: Icon(Icons.menu),
          title: Text("Finish Flutter"),
          centerTitle: true,
          actions: [Icon(Icons.login), Icon(Icons.person)],
        ),
        body: Center(child: Screen1()),
      ),
    );
  }
}
