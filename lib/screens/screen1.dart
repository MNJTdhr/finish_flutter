import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

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
                title: Text("data"),
                trailing: Text('trailing'),
              )
            ],
          ),
        ],
      ),
    );
  }
}
