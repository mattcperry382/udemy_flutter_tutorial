import 'package:flutter/material.dart';

void main(){
  runApp(new Application());
}

// Stateless Widget
class Application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stateless Widget',
      home: Scaffold(
        body: Container(
          color: Colors.pink,
          child: Container(
            color: Colors.yellow,
            margin: const EdgeInsets.all(30.0),
          ),
        ),
      ),
    );
  }
}