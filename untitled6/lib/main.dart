import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Container - Skokov')),
          backgroundColor: Colors.teal, // Цвет верхней панели
          toolbarHeight: 80.0,
        ),
        body: Center(
          child: MyCustomWidget(),
        ),
      ),
    );
  }
}

class MyCustomWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildHorseContainer(Colors.deepOrange),
          _buildHorseContainer(Colors.deepOrangeAccent),
          _buildHorseContainer(Colors.amber),
          _buildHorseContainer(Colors.amberAccent),
          _buildHorseContainer(Colors.lightGreenAccent),
        ],
      ),
    );
  }

  Widget _buildHorseContainer(Color color) {
    return Container(
      width: 300.0,
      height: 80.0,
      margin: EdgeInsets.symmetric(vertical: 5.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20.0),
      ),
    );
  }
}
