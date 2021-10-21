// ignore_for_file: prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';

class home_pages extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _home_pagesState();
  }
}
  // ignore: camel_case_types
  class _home_pagesState extends State<home_pages>{
    int contador = 0;
    int potencia1 = 1;
  @override
  Widget build(BuildContext context) {
    
    // ignore: prefer_const_constructors
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        // ignore: prefer_const_constructors
        title: Text('Potencia'),
      ),
      body: 
      Center(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // ignore: prefer_const_literals_to_create_immutables
        children: <Widget>[
          Text('Contador: '+contador.toString(), style: TextStyle (fontSize: 30.0)),
          Text('Potencia: '+potencia1.toString(), style: TextStyle (fontSize: 30.0),),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
            TextButton(
            onPressed: (){
              cero();
            },
            child: Text('0')),
            TextButton(onPressed: (){
                suma();
            },
            child: Text('+'),),
            TextButton(onPressed: (){
              resta();
            },
            child: Text('-'),)],   
          ),
         ],
      ),   
    ),
    floatingActionButton: botones()
    );
  }

  Widget botones() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [SizedBox(width: 30.0),boton3(),Expanded(child: SizedBox()),boton2(),boton1(),Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          boton12(),
          boton13(),
          boton4(),
          boton10(),
          boton11()
        ],
      )],
    );
  }


  Widget boton13(){
    return FloatingActionButton(
      child: Text('200'),
      onPressed: () {

      doscientos();
      },

    );
  }

  Widget boton12(){
    return FloatingActionButton(
      child: Text('20'),
      onPressed: () {

      veinte();
      },

    );
  }

  doscientos(){
    contador = 200;
    potencia1 = 0;
    setState(() {
      
    });
  }

  veinte(){
    contador = 20;
    potencia1 = 0;
    setState(() {
      
    });
  }

  Widget boton10(){
    return FloatingActionButton(
      child: Text('100'),
      onPressed: () {  
        cien();
    },

    );
  }

  Widget boton11(){
    return FloatingActionButton(
      child: Text('50'),
      onPressed: () {  
        cincuenta();
    },

    );
  }

  Widget boton1(){
   return FloatingActionButton(
     onPressed: () {  
        suma();
     },
   child: Icon (Icons.add));
   
  }

  Widget boton2(){
    return FloatingActionButton(
      onPressed: () { 
        resta();
       },
      child: Icon (Icons.remove),
    );
  }

  Widget boton3(){
    return FloatingActionButton(
      onPressed: () {  
        cero();
      },
      child: Text('0'),
      );
  }

  Widget boton4(){
    return FloatingActionButton(
      onPressed: () {  
        potencia();
    },
    child: Icon (Icons.arrow_drop_up_sharp),);
  }

  cero() {
    contador = 0;
    potencia1 = 0;
    setState(() {
      
    });
  }

  resta() {
    contador = contador - 1;
    setState(() {
      
    });
  }

  suma() {
    contador = contador + 1;
    setState(() {
      
    });
  }

  potencia(){
    setState(() {
      potencia1 = contador * contador;
    });
  }

  Widget boton5(){
    return FloatingActionButton(onPressed: () { 
      cien();
     },

    );
  }


  cincuenta(){
    contador = 50;
    setState(() {
      
    });
  }

  cien(){
    contador = 100;
    setState(() {
      
    });
  }
}

