import 'package:flutter/material.dart';
import 'custom_widget.dart';

void main() {
  runApp(Application());
}

class Application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Custom Widgets',
        home: Scaffold(
          body: CustomWidgets(),
        )
    );
  }
}
