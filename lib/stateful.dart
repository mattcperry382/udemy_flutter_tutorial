import 'package:flutter/material.dart';

void main() {
  runApp(Application());
}

class Application extends StatefulWidget {
  @override
  _ApplicationState createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {

  String ttext = '';

  @override
  void initState() {
    // TODO: implement initState
    ttext = 'Click on this button';
    super.initState();
  }

  void method1() {
    setState((){
      ttext = 'The text has been changed.';
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stateful Widget',
      home: Scaffold(
        body: Center(
          child: ElevatedButton(onPressed:(){method1();}, child: Text(ttext),),
        ),
      ),
    );
  }
}