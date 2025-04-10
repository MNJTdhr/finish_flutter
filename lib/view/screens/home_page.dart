import 'package:flutter/material.dart';

//view/screens/home_page.dart
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController textController = TextEditingController();
  bool? isCheck = false;  //because can be null later in the code

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
          SizedBox(height: 10),
          Text(textController.text),
          SizedBox(height: 10),
          Checkbox(
            value: isCheck,
            onChanged: (bool? value) {  //because can be null
              setState(() {
                isCheck = value;
              });
            },
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
