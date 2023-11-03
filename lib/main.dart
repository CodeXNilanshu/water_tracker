import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int nWaterglass = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Center(
            child: Text(
              'New App',
              style: TextStyle(
                fontSize: 30,
              ),
            ),
          ),
        ),
        body: Center(
          child: Text(
            'No. of water glass drink: $nWaterglass',
            style: TextStyle(
              fontSize: 30,
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.redAccent,
          child: Icon(
            Icons.add,
          ),
          onPressed: () {
            // Increment the `nDonuts` variable.
            nWaterglass++;

            // Mark the widget tree as dirty, so that it will be rebuilt
            // with the new value of the `nDonuts` variable.
            setState(() {});
          },
        ),
      ),
    );
  }
}
