// ListView.builder allows us to quicky generate a ListView From a DartList,
// We can Select the items in the list to be components of the Listile Widgets

// ignore: unused_import
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //  add an item to this list in the future
    // via some diaglogbox
    final items = ['item1', 'item2', 'item3'];

    return MaterialApp(
      title: 'Example',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('App Bar Title'),
        ),
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            // item = items[0]
            final item = items[index];

            return ListTile(
              title: Text(item),
              subtitle: const Text('subtitle'),
              onTap: () {
                print('you just Taped on $item');
              },
            );
          },
        ),
      ),
    );
  }
}
