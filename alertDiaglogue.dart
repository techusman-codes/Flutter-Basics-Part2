// ignore: unused_import
// import 'dart:ffi';

import 'package:flutter/material.dart';
// import 'package:my_app_first/widget.dart';
// ShowDialog and AlertDiaglog
// This allowas us to separet pop-up with its
// Own Content and a list potential actions Buttons

// Navigator: This Displays Screens as a stack using the correct Transitions Animations
// For the target Platforms

// to navigate to the new  Screen,
// we acces the Navigator Through the routes
// BuildContext and imperative methods sucha as push() or pop()
// Navigator.of(context).pop()
void main() => runApp(MyAPP());

class MyAPP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Diaglog Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // INITIAL VAR-----> String
  String _inputText = '';

  // void show input Dialog
  // AlertDialog
  void _showInputDialog() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          TextEditingController controller = TextEditingController();
          return AlertDialog(
            title: const Text('Enter Some Text'),
            content: TextField(
              controller: controller,
              decoration: const InputDecoration(hintText: 'Enter Some Text'),
            ),
            actions: <Widget>[
              TextButton(
                child: const Text('Cancel'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              TextButton(
                  child: Text('Save'),
                  onPressed: () {
                    setState(() {
                      _inputText = controller.text;
                    });
                    Navigator.of(context).pop();
                  })
            ],
          );
        });
  }

  // return Scaffold
  // appBar - body(updated State text)---icon
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("My New App!")),
      body: Center(
        child:
            Text(_inputText.isEmpty ? 'Tap icon to enter text' : '$_inputText'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _showInputDialog,
        child: const Icon(Icons.edit),
      ),
    );
  }
}
