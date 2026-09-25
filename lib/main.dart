import 'package:flutter/material.dart';
import 'package:sampleflutter/page2.dart';
import 'package:sampleflutter/page3.dart';
import 'package:sampleflutter/page4.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FourthPage(),
    )
  );
}


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome to my first Flutter App"),
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
        children: [
          Center(
            child: Text("Hello Word"),
          ),
          Icon(Icons.woman_sharp, color: Colors.red,)
          
        ],
      ),
    );
  }
}

