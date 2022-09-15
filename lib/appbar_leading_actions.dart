import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Application()));
}

class Application extends StatefulWidget {
  @override
  _ApplicationState createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  String mtext = ' ';

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AppBar Widget'),
        leading: Icon(Icons.menu),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.arrow_forward),
              onPressed: () {
                setState(() {
                  mtext = "This is an arrow icon button.";
                });
              }),
          IconButton(
              icon: Icon(Icons.close),
              onPressed: () {
                setState(() {
                  mtext = "This is a close icon button.";
                });
              }),
        ],
      ),
      body: Center(
        child: Text(mtext),
      ),
    );
  }
}
