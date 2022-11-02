import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  num _theNumber = 0;
  num _theCardinal = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "App 1 - Remake Counter",
      theme: ThemeData(
          colorSchemeSeed: const Color.fromRGBO(255, 230, 182, 25),
          useMaterial3: true),
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              "Stateful Demo",
              style: TextStyle(fontSize: 16),
            ),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(
                child: Text(
                  "Cardinal ${_theCardinal.toInt()}",
                  style: const TextStyle(fontSize: 42),
                ),
              ),
              Slider(
                  value: _theCardinal.toDouble(),
                  min: 0,
                  max: 10,
                  divisions: 10,
                  onChanged: setCardinal),
              Expanded(
                child: Center(
                  child: Text(
                    _theNumber.toString(),
                    style: const TextStyle(fontSize: 102),
                  ),
                ),
              ),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            FloatingActionButton(
              onPressed: decreaseNumber,
              child: const Icon(Icons.remove),
            ),
            FloatingActionButton(
              onPressed: resetNumber,
              child: const Icon(Icons.refresh),
            ),
            FloatingActionButton(
              onPressed: addNumber,
              child: const Icon(Icons.add),
            )
          ],
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }

  void setCardinal(double value) {
    setState(() {
      _theCardinal = value.toInt();
    });
  }

  void addNumber() {
    setState(() {
      _theNumber = _theNumber + _theCardinal.toInt();
    });
  }

  void resetNumber() {
    setState(() {
      _theNumber = 0;
    });
  }

  void decreaseNumber() {
    setState(() {
      _theNumber = _theNumber - _theCardinal.toInt();
    });
  }
}
