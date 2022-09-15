import 'package:flutter/material.dart';

void main() {
  runApp(Application());
}

class Application extends StatefulWidget {
  @override
  _ApplicationState createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  String ptext = '';

  void method1(value) {
    setState(() {
      ptext = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Dummy Application",
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.green,
            title: const Text('Dummy Application'),
          ),
          body: Row(
            children: <Widget>[
              Column(
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () {
                      method1("You pressed the \nelevated button.");
                    },
                    child: Text('Elevated Button'),
                  ),
                  Text(ptext),
                ],
              ),
              Column(
                children: <Widget>[
                  TextButton(
                    onPressed: () {
                      method1("You pressed the \nflat button.");
                    },
                    child: Text('Flat Button'),
                  ),
                  Text(ptext),
                ],
              )
            ],
          )),
    );
  }
}
