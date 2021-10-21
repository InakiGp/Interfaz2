
import 'package:flutter/material.dart';
import 'package:flutter2/src/home_pages.dart';

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   
    return MaterialApp(
      home: home_pages()
    );
  }
}