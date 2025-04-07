import 'package:finish_flutter/view/screens/home_page.dart';
import 'package:finish_flutter/widgets/navbar.dart';
import 'package:flutter/material.dart';

class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Finish Flutter"),
        centerTitle: true,
        actions: [
          Icon(Icons.camera),
          SizedBox(width: 10),
          Icon(Icons.login),
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
      body: HomePage(),
      bottomNavigationBar: Navbar(),
    );
  }
}
