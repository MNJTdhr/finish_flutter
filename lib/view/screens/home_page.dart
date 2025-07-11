import 'package:flutter/material.dart';

//view/screens/home_page.dart
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController textController = TextEditingController();
  double sliderVal = 0.0;
  bool? isCheck = false;
  bool? isTriCheck = false;
  bool isSwitch = false;
  bool isTileSwitch = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
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
              onChanged: (bool? value) {
                //because can be null
                setState(() {
                  isCheck = value;
                });
              },
            ),
            SizedBox(height: 10),
            CheckboxListTile(
              tristate: true,
              title: Text("data"),
              value: isTriCheck,
              onChanged: (bool? value) {
                //because can be null
                setState(() {
                  isTriCheck = value;
                });
              },
            ),
            SizedBox(height: 10),
            Switch(
              value: isSwitch,
              onChanged:
                  (value) => setState(() {
                    isSwitch = value;
                  }),
            ),
            SizedBox(height: 10),
            SwitchListTile(
              title: Text("data"),
              value: isTileSwitch,
              onChanged:
                  (value) => setState(() {
                    isTileSwitch = value;
                  }),
            ),
            SizedBox(height: 10),
            Slider(
              value: sliderVal,
              max: 100,
              min: -100,
              divisions: 10,
              onChanged: (value) {
                setState(() {
                  sliderVal = value;
                  debugPrint('$value');
                });
              },
            ),
            SizedBox(height: 10),
            Checkbox(
              value: isCheck,
              onChanged: (bool? value) {
                //because can be null
                setState(() {
                  isCheck = value;
                });
              },
            ),
            SizedBox(height: 10),
            GestureDetector(
              onTap: () {
                debugPrint("pressed");
              },
              child: Image.asset('assets/images/bg.jpg'),
            ),
            SizedBox(height: 10),
            InkWell(
              onTap: () {
                debugPrint("pressed");
              },
              splashColor: Colors.teal,
              child: Container(
                color: Colors.white12,
                width: double.infinity,
                height: 200,
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(onPressed: () {}, child: Text("Click me")),
            TextButton(onPressed: () {}, child: Text("Click me")),
            OutlinedButton(onPressed: () {}, child: Text("Click me")),
            FilledButton(onPressed: () {}, child: Text("Click me")),
          ],
        ),
      ),
    );
  }
}
