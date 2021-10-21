// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class pantallaa extends StatefulWidget {


  @override
  State<pantallaa> createState() => _pantallaaState();
}

class _pantallaaState extends State<pantallaa> {
  String imagen = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Usuario'),
        leading: Icon(Icons.read_more),
        actions: [
           GestureDetector(
              onTap: (){
                setState(() {
                  
                });
                Navigator.pop(context);
              },
            child: CircleAvatar(
              backgroundImage: NetworkImage("https://cdn.pixabay.com/photo/2016/05/31/11/43/backwards-1426683_960_720.png"),
              radius: 25.0,
            ),
            ),
        ]
      ),
    );
  }
}