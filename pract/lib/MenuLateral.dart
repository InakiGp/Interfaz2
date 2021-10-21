import 'package:flutter/material.dart';

class MenuLateral extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return new Drawer(
      child: ListView(
       children: [ ListTile(
            title: Text('List1'),
        ),
        ListTile(
            title: Text('List2'),
        ),
       ]),
    );
  }
}