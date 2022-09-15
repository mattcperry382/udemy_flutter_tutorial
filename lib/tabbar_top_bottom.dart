import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Application()));
}

class Application extends StatefulWidget {
  @override
  _ApplicationState createState() => _ApplicationState();
}

class _ApplicationState extends State<Application>
    with SingleTickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('TabBar'),
          bottom: TabBar(
            controller: controller,
            tabs: const <Widget>[
              Tab(
                icon: Icon(Icons.home),
              ),
              Tab(
                icon: Icon(Icons.supervisor_account),
              ),
              Tab(
                icon: Icon(Icons.close),
              ),
            ],
          )),
      body: TabBarView(
        controller: controller,
        children: const <Widget>[
          Center(
            child: Text('Home'),
          ),
          Center(
            child: Text('User account'),
          ),
          Center(
            child: Text('Close'),
          ),
        ],
      ),
      bottomNavigationBar: const Material(
          color: Colors.blue,
          child: TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.home),
              ),
              Tab(
                icon: Icon(Icons.supervisor_account),
              ),
              Tab(
                icon: Icon(Icons.close),
              ),
            ],
          )),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
