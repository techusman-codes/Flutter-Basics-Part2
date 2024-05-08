// ignore: unused_import
import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
// import 'package:my_app_first/StatefullWidget.dart';
// import 'package:my_app_first/widget.dart';

void main() => runApp(myApp());

// STATELESSWIDGET MyApp
class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyHomePage());
  }
}

// STATEFULLWIDGET MYHOME PAGE
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // INTIAL VAR
  String _inputText = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: (const Text('App at the Top')),
      ),
      body: Center(
        child: TextField(
            decoration:
                const InputDecoration(hintText: "Enter Some Text here!"),
            // onchange---> anytime you update the texc then the value pass in
            onChanged: (value) => setState(() {
                  _inputText = value;
                })),
      ),
      bottomSheet: Container(
        alignment: Alignment.center,
        height: 50,
        child: Text('You type $_inputText'),
      ),
    );
  }
}

// State====
// Scafforld -- AppBar Top, Center TexField, ButtomSheet
