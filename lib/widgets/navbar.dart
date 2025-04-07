import 'package:flutter/material.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int _currentActiveTab = 0;

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
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
    );
  }
}
