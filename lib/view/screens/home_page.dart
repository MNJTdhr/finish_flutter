import 'package:flutter/material.dart';

//view/screens/home_page.dart
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          TextField(
            controller: textController,
            decoration: InputDecoration(border: OutlineInputBorder()),
            onEditingComplete: () => setState(() {}),
          ),
          Text(textController.text),
        ],
      ),
    );
  }
}
