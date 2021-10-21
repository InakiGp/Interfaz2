import 'package:flutter/material.dart';
import 'dart:math';

class home_page extends StatefulWidget{
  @override
  State<home_page> createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
  @override
  var numero = 1;
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.change_circle_rounded),
        onPressed: () {
          setState(() {
            Random random = new Random();
            numero = random.nextInt(6) + 1;
          });
        },
      ),
      appBar: AppBar(
        title: Text('Dados'),
      ),
      body: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      SizedBox(height: 20,),
      Text('DADOS ALEATORIOS',style: TextStyle(fontFamily: 'Aria', color: Colors.blue,fontSize: 40),),
      FadeInImage(
        image: AssetImage('assets/dice_${numero}.png'), 
        placeholder: AssetImage('assets/espera.gif'),
        fadeInDuration: Duration(milliseconds: 300),
      ),
        Text('NUMERO: ${numero}'),
    ],
  ),
    );
  }
}
