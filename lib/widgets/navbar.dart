import 'package:finish_flutter/data/notifiers.dart';
import 'package:flutter/material.dart';
//lib/widgets/navbar.dart

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: selectedPageNotifier,
      builder: (context, selectedpage, child) {
        return NavigationBar(
          destinations: [
            NavigationDestination(icon: Icon(Icons.home), label: 'home'),
            NavigationDestination(icon: Icon(Icons.person), label: 'profile'),
          ],
          onDestinationSelected: (int value) {
            selectedPageNotifier.value = value;
            // debugPrint(value.toString());
          },
          selectedIndex: selectedpage,
        );
      },
    );
  }
}
