import 'package:flutter/material.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  int _counter = 0;
  int _currentActiveTab = 0;

  void _incrementCounter() => setState(() => _counter++);
  void _decrementCounter() => setState(() => _counter--);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Finish Flutter"),
        centerTitle: true,
        actions: [Icon(Icons.login), Icon(Icons.person)],
      ),
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () => _incrementCounter(),
                    child: Icon(Icons.add_box_outlined),
                  ),
                  ElevatedButton(
                    onPressed: () => _decrementCounter(),
                    child: Icon(Icons.remove_circle_outline_rounded),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Center(child: Text("data: $_counter")),
              SizedBox(height: 20),
              Center(child: Text("Curent tab: ${_currentActiveTab + 1}")),
            ],
          ),
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
              child: Text(
                "drawer",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(leading: Icon(Icons.star), title: Text('data')),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(
            onPressed: _incrementCounter,
            child: Icon(Icons.add),
          ),
          SizedBox(height: 10),
          FloatingActionButton(
            onPressed: _decrementCounter,
            child: Icon(Icons.remove),
          ),
        ],
      ),
      bottomNavigationBar: NavigationBar(
        destinations: [
          NavigationDestination(icon: Icon(Icons.home), label: 'home'),
          NavigationDestination(icon: Icon(Icons.person), label: 'profile'),
        ],
        onDestinationSelected: (value) {
          setState(() {
            _currentActiveTab = value;
          });
          // debugPrint(value.toString());
        },
        selectedIndex: _currentActiveTab,
      ),
    );
  }
}
