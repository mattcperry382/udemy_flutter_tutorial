import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Application()));
}

class Application extends StatefulWidget {
  @override
  _ApplicationState createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  bool cbool = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Checkbox(
      value: cbool,
      onChanged: (bool? cb) {
        if (cb != null) {
          setState(() {
            cbool = cb;
            print(cbool);
          });
        }
      },
    )));
  }
}
