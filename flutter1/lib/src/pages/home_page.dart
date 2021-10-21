// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, unnecessary_new

import 'package:flutter/material.dart';


// ignore: must_be_immutable
class HomePage extends StatefulWidget{

  @override
  State<home_pages> createState() => _home_pagesState();
}

class _home_pagesState extends State<home_pages> {
  int contador = 0;
  final estilo = new TextStyle(fontSize: 35.0);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Título'),
        centerTitle: true,
        foregroundColor: Colors.pink,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Text('Número de clicks: ',style: estilo),
            Text(contador.toString(),style: TextStyle(fontSize: 30.0),),
          ],
        )
        
        ),
        // ignore: prefer_const_literals_to_create_immutables
        floatingActionButton: FloatingActionButton(
          child: Icon (Icons.add),
          onPressed: () { 

            contador++;
           setState((){
             
           }
           );
           },
        ),
    );
  }

  void setState(Null Function() param0) {}
}