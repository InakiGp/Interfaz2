
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

      floatingActionButton: crearbotones(),

    );
  }

  Widget crearbotones() {
return Row(
  mainAxisAlignment: MainAxisAlignment.end,
  children: [boton3(),
  Expanded(child: SizedBox()),boton2(),boton1()]);
  }

  Widget boton3(){
    return FloatingActionButton(
      child: Text('0'),
        onPressed: cero
    );
  }

  Widget boton2(){
    return FloatingActionButton(
      child: Icon(Icons.remove),
        onPressed: resta
    );
  }

  Widget boton1(){
    return FloatingActionButton(
      child: Icon(Icons.add),
        onPressed: suma
    );
  }

  void cero() {
      
          contador = 0;
          setState(() {
       
          });
        
  }

  void resta() {
    
          contador = contador - 1;
          setState(() {
       
          });
        
  }

  void suma() {
     
          contador++;
          setState(() {
       
          });
        
  }
}
