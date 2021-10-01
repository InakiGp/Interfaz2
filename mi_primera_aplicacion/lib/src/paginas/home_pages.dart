
import 'package:flutter/material.dart';

class home_pages extends StatefulWidget {
  @override
  State<home_pages> createState() => _home_pagesState();
}

class _home_pagesState extends State<home_pages> {
  int contador = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Texto_APPBAR'),
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Numero de clicks', style: TextStyle(fontSize: 50.0)),
          Text(
            contador.toString(),
            style: TextStyle(fontSize: 50.0),
          ),
        ],
      )),
      floatingActionButton: FloatingActionButton(
        child: Text('+'),
        onPressed: () {
          contador = contador + 1;
          setState(() {
            
          });
        },
        
      ),
    );
  }
}
