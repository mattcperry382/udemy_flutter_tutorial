import 'package:flutter/material.dart';

void main(){
  runApp(Application());
}

class Application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MyApplication",
      home: Scaffold(
        appBar: AppBar(title: const Text('Row & Column'),),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('This'),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                Text('This'),
                Text('is a'),
                Text('Column'),
              ],
            ),
            const Text('Row'),
          ],
        ),
      ),
    );
  }
}