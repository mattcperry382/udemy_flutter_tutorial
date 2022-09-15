import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Application()));
}

class Application extends StatefulWidget {
  @override
  _ApplicationState createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
            children: const <Widget>[
              Card(color: Colors.yellow, child: Padding(padding: EdgeInsets.all(200.0))),
              Card(color: Colors.red, child: Padding(padding: EdgeInsets.all(100.0))),
              Card(color: Colors.green, child: Padding(padding: EdgeInsets.all(50.0))),
              Card(color: Colors.blue, child: Padding(padding: EdgeInsets.all(30.0))),
              Card(color: Colors.brown, child: Padding(padding: EdgeInsets.all(10.0))),
            ]
        )
    );
  }
}
