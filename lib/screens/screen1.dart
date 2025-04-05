import 'package:flutter/material.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  int _counter = 0;

  void _incrementCounter() => setState(() => _counter++);
  void _decrementCounter() => setState(() => _counter--);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      _incrementCounter();
                    },
                    child: Icon(Icons.add_box_outlined),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      _decrementCounter();
                    },
                    child: Icon(Icons.remove_circle_outline_rounded),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Center(child: Text("data: $_counter")),
            ],
          ),
        ],
      ),
      bottomNavigationBar: NavigationBar(
        destinations: [
          NavigationDestination(icon: Icon(Icons.home), label: 'home'),
          NavigationDestination(icon: Icon(Icons.menu), label: 'menu'),
        ],
        onDestinationSelected: (value) {
          debugPrint(value.toString());
        },
        selectedIndex: 0,
      ),
    );
  }
}
