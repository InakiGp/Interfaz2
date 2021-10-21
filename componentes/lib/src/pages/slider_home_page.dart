import 'dart:ffi';

import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {

  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double miValue = 100;
  bool bloquearCheck = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 25),
        child: Column(
          children: [
            crearSlider(),
            checkbox(),
            crearSwitch(),
            Expanded(child: crearImagen())
          ],
        ),
      ),
    );
  }

  Widget crearSlider() {
      return Slider(
        activeColor: Colors.green,
        label: 'Tamaño de la imágen',
         onChanged: (bloquearCheck)? null: (valor){
           setState(() {
             miValue = valor;
           });
        print(valor);
      }, value: miValue,
      min: 10,
      max: 400,
      );
  }

Widget crearImagen() {
      return Image(
        image: NetworkImage('http://pngimg.com/uploads/batman/batman_PNG111.png'),
        width: miValue,
      );
 }
Widget checkbox(){
        return CheckboxListTile(
          title: Text('Bloquear Slider'),
          value: bloquearCheck, 
          onChanged: (valor){
            setState(() {
              bloquearCheck = valor!;
            });
          });
      }

Widget crearSwitch(){
        return SwitchListTile(
          title: Text('Bloquear Slider'),
          value: bloquearCheck, 
          onChanged: (valor){
            setState(() {
              bloquearCheck = valor;
            });
          });
      }

}