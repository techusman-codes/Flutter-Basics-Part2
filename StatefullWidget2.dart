import 'package:flutter/material.dart';

void main() =>
    runApp(MaterialApp(home: Scaffold(body: Center(child: Counter()))));
// Counter is our Own custom Widget
// we use StateFull widget to update our Application based on User interaction

// Now to create our Counter Widget
class Counter extends StatefulWidget {
  @override
  State<Counter> createState() => _CounterState();
}

// to define our actual class class of counter state
class _CounterState extends State<Counter> {
//  Button that push the counter how many times you push the Counter:4

// Initial Value _Counter Var
  int _counter = 0;
// Increment Function _Counter++ SetSate()
  void _increment() {
    setState() =>
        // Update the counter
        _counter++;
  }

// Widget Build() Button on Pressed: _increment
  @override
  Widget build(BuildContext contex) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          onPressed: _increment,
          child: const Text('Click Me!'),
          ), 
        Text('You Pressed the button $_counter times')],
    );
  }
}
