import 'package:finish_flutter/view/widget_tree.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
//main.dart
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorSchemeSeed: Colors.teal,
        brightness: Brightness.dark,
      ),
      home: WidgetTree(),
    );
  }
}
