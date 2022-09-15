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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Dummy Application",
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.green,
            title: const Text('Dummy Application'),
          ),
          body: Column(
            children: <Widget>[
              TextField(
                onSubmitted: (String txt) {
                  setState(() {
                    ptext = txt;
                  });
                },
                decoration: InputDecoration(hintText: 'Type something', labelText: 'Full name'),
              ),
              Text(ptext)
            ],
          )
      ),
    );
  }
}
