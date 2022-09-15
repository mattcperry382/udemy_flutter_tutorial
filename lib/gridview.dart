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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
          itemBuilder: (BuildContext context, int index) {
            return const Card(
              color: Colors.blue,
              child: Padding(padding: EdgeInsets.all(20.0)),
            );
          },
        )
    );
  }
}
