import 'package:flutter/material.dart';

import 'listtile.dart';
import 'listtile2.dart';

class HomePage extends StatefulWidget {
  

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Prac'),
        backgroundColor: Colors.red,
      ),
      body: ListView(
        children: [
          ListTile(
          title: Text('ListTile 1'),
          leading: Icon(Icons.adb_sharp),
          trailing: Icon(Icons.adb_sharp),
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => ListTile1()));
          },
          ),
          Divider(),
          ListTile(
          title: Text('ListTile 2'),
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => ListTile2()));
          },
          leading: Icon(Icons.adb_sharp),
          trailing: Icon(Icons.adb_sharp),
          ),
        ],
      ),
    );
  }
}