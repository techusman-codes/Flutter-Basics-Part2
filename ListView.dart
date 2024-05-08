// ListView Allows us to use ListTile objects inside of a Dart List to
// quickly Create a column like a view of items from a list
// example a list of Phone Contacts

// ignore: unused_import

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Example App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('ListView'),
        ),
        body: ListView(children: [
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text('Person One'),
            subtitle: const Text('ugarba202@gmail.com'),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () => print('List StyleOne Was Taped'),
          ),

           ListTile(
            leading: const Icon(Icons.person),
            title: const Text('Person Two'),
            subtitle: const Text('ugarba202@gmail.com'),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () => print('List StyleTwo Was Taped'),
          ),

           ListTile(
            leading: const Icon(Icons.person),
            title: const Text('Person Thre'),
            subtitle: const Text('ugarba202@gmail.com'),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () => print('List StyleThree Was Taped'),
          ),
        ]),
      ),
    );
  }
}
