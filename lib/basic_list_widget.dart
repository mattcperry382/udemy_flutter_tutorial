import 'package:flutter/material.dart';

void main(){
  runApp(Application());
}

class Application extends StatefulWidget {
  @override
  _ApplicationState createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Dummy Application",
      home: Scaffold(
        appBar: AppBar(title: const Text('List Widget'),),
        body: ListView(
          children: const <Widget>[
            ListTile(
              title: Text('Item 1'),
              trailing: Icon(Icons.arrow_forward),
            ),
            ListTile(
              title: Text('Item 2'),
              trailing: Icon(Icons.arrow_forward),
            ),
            ListTile(
              title: Text('Item 3'),
              trailing: Icon(Icons.arrow_forward),
            ),
          ],
        ),
      ),
    );
  }
}