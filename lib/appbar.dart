import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Application()));
}

class Application extends StatefulWidget {
  @override
  _ApplicationState createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  List<int> _items = new List.filled(0, 0, growable: true);

  @override
  void initState() {
    for (int i = 0; i < 50; i++) {
      _items.add(i);
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('AppBar Widget'),
        elevation: 10.0,
        titleSpacing: 80.0,
        toolbarOpacity: 0.9,
      ),
    );
  }
}
