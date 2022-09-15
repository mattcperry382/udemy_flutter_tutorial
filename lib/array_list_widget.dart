import 'package:flutter/material.dart';

void main() {
  runApp(Application());
}

class Application extends StatefulWidget {
  @override
  _ApplicationState createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  List<int> items = List.filled(0, 0, growable: true);

  @override
  void initState() {
    for (int i = 0; i < 50; i++) {
      items.add(i);
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Dummy Application",
      home: Scaffold(
        appBar: AppBar(
          title: const Text('List Widget'),
        ),
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text('Item No : $index'),
              trailing: const Icon(Icons.arrow_forward),
            );
          },
        ),
      ),
    );
  }
}
