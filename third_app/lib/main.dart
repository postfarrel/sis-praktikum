import 'package:flutter/material.dart';

void main() {
  runApp(new Application());
}

class Application extends StatefulWidget {
  @override
  _ApplicationState createState() => new _ApplicationState();
}

class _ApplicationState extends State<Application>
    with SingleTickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    super.initState();
    controller = new TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("Application with Tab Top & Tab "),
          bottom: new TabBar(controller: controller, tabs: [
            new Tab(
              text: "Tab 1",
            ),
            new Tab(
              text: "Tab 2",
            ),
            new Tab(
              text: "Tab 3",
            ),
            new Tab(
              text: "Tab 4",
            ),
          ]),
        ),
        bottomNavigationBar: new Material(
          color: Colors.deepOrange,
          child: new TabBar(controller: controller, tabs: [
            new Tab(
              text: "Tab 5",
            ),
            new Tab(
              text: "Tab 6",
            ),
            new Tab(
              text: "Tab 7",
            ),
            new Tab(
              text: "Tab 8",
            ),
          ]),
        ),
        body: new TabBarView(controller: controller, children: <Widget>[
          new Center(
            child: new Text("Tab 1 View 1"),
          ),
          new Center(
            child: new Text("Tab 1 View 2"),
          ),
          new Center(
            child: new Text("Tab 1 View 3"),
          ),
          new Center(
            child: new Text("Tab 1 View 4"),
          ),
        ]),
      ),
    );
  }
}
