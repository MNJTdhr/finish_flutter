import 'package:finish_flutter/data/notifiers.dart';
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
    return ValueListenableBuilder(
      valueListenable: selectedThemeNotifier,
      builder: (context, value, child) {
        return MaterialApp(
          theme: ThemeData(
            colorSchemeSeed: Colors.teal,
            brightness: value ? Brightness.dark : Brightness.light,
          ),
          home: WidgetTree(),
        );
      },
    );
  }
}
