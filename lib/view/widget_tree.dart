import 'package:finish_flutter/data/notifiers.dart';
import 'package:finish_flutter/view/screens/home_page.dart';
import 'package:finish_flutter/view/screens/profile_page.dart';
import 'package:finish_flutter/widgets/navbar.dart';
import 'package:flutter/material.dart';

//view/screens/widget_tree.dart
List<Widget> pages = [HomePage(), ProfilePage()];

class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Finish Flutter"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              selectedThemeNotifier.value = !selectedThemeNotifier.value;
            },
            icon: ValueListenableBuilder(
              valueListenable: selectedThemeNotifier,
              builder: (context, isDarkMode, child) {
                return Icon(isDarkMode ? Icons.dark_mode : Icons.light_mode);
              },
            ),
          ),
          SizedBox(width: 10),
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
      body: ValueListenableBuilder(
        valueListenable: selectedPageNotifier,
        builder: (context, selectedPage, child) {
          return pages.elementAt(selectedPage);
        },
      ),
      bottomNavigationBar: Navbar(),
    );
  }
}
