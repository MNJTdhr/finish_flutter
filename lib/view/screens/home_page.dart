import 'package:flutter/material.dart';

//view/screens/home_page.dart
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          TextField(decoration: InputDecoration(border: OutlineInputBorder())),
        ],
      ),
    );
  }
}
