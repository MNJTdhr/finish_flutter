import 'package:flutter/material.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Image.asset(
          //   'assets/images/bg.jpg',
          //   fit: BoxFit.cover,
          //   height: double.infinity,
          // ),
          Wrap(
            alignment: WrapAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  _incrementCounter();
                },
                child: Icon(Icons.star),
              ),
              ElevatedButton(
                onPressed: () {
                  _decrementCounter();
                },
                child: Icon(Icons.star),
              ),
              Center(child: Text("data: $_counter")),
            ],
          ),
        ],
      ),
    );
  }
}
