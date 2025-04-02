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
      appBar: AppBar(
        title: Text("Finish Flutter"),
        leading: Icon(Icons.menu, color: Colors.white),
      ),
      body: Stack(
        children: [
          // Image.asset(
          //   'assets/images/bg.jpg',
          //   fit: BoxFit.cover,
          //   height: double.infinity,
          // ),
          Column(
            children: [
              ListTile(
                leading: Icon(Icons.star),
                tileColor: Colors.red,
                title: Text("data increment"),
                trailing: Text('trailing'),
                onTap: () {
                  _incrementCounter();
                },
              ),
              ListTile(
                leading: Icon(Icons.star),
                tileColor: Colors.blue,
                title: Text("data decrement"),
                trailing: Text('trailing'),
                onTap: () {
                  _decrementCounter();
                },
              ),
              Center(child: Text("data: $_counter"),),
            ],
          ),
        ],
      ),
    );
  }
}
