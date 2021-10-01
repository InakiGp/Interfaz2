// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:mi_primera_aplicacion/src/paginas/home_pages.dart';

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget{

  @override
  Widget build(context){


    return MaterialApp(
      home: home_pages()
    );
  }
}