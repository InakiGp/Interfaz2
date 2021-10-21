

import 'package:flutter/material.dart';

import 'MenuLateral.dart';


class ListTile2 extends StatefulWidget {
  @override
  State<ListTile2> createState() => _ListTile2State();
}

class _ListTile2State extends State<ListTile2> {
  String saludo = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListTile2'),
        backgroundColor: Colors.pink[600],
      ),
      drawer: MenuLateral(),
      body: Center(
        child: Column(
          children: [
            Text('Ejemplo Texto'),
            Text(saludo)
          ],
        ),
      ),
      floatingActionButton: botones(),
    );
  }

Widget botones() {
  return Row(
    children:[boton1(),boton2()
    ]);
}
Widget boton1(){
  return FloatingActionButton(
    child: Icon(Icons.dock_sharp),
    onPressed: suma,
    heroTag: null,
  );
}

Widget boton2(){
  return FloatingActionButton(
    onPressed: () {  
      Navigator.pop(context);
    },
    heroTag: null,
    child: Text('boton2')
  );
}


void suma(){
  saludo = 'sad';
  setState(() {
    
  });
}


}