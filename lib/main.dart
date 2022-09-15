import 'package:flutter/material.dart';

void main() {
  runApp(Application());
}

class Application extends StatefulWidget {
  @override
  _ApplicationState createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  int rvalue = 0;

  void method1(value) {
    setState(() {
      rvalue = value;
      print(rvalue);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dummy Application',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text('Dummy Application')
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Radio(value: 1, groupValue: rvalue, onChanged: (int? rval) {
                method1(rval);
              }),
              Radio(value: 2, groupValue: rvalue, onChanged: (int? rval) {
                method1(rval);
              }),
              Radio(value: 3, groupValue: rvalue, onChanged: (int? rval) {
                method1(rval);
              }),
            ],
          )
        )
      )

    );
  }
}
