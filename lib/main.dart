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
          title: Text("Finish Flutter"),
          leading: Icon(Icons.menu),
        ),
        body: Center(child: Screen1()),
      ),
    );
  }
}
