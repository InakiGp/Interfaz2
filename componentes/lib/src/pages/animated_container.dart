import 'dart:math';

import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';

class AnimatedContainerPage extends StatefulWidget {
  const AnimatedContainerPage({ Key? key }) : super(key: key);

  @override
  _AnimatedContainerPageState createState() => _AnimatedContainerPageState();
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {
  double _width = 50.0;
  double _height = 50.0;
  Color _color = Colors.pink;

  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8.0);

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        floatingActionButton: FloatingActionButton(
          
          onPressed: () { 
            setState(() {
              cambiarForma();
            });
           },
          child: Icon(Icons.add_a_photo_outlined)
        ),
        appBar: AppBar(
          title: Text('Animación'),
        ),
        body: Center(
         child: AnimatedContainer(
            width: _width,
            height: _height,
            curve: Curves.linearToEaseOut,
            decoration: BoxDecoration(
              borderRadius: _borderRadius,
              color: _color
              ), duration: Duration(milliseconds: 500),          
              )
        ),
      );
  }

void cambiarForma(){

  final random = Random();

              _width = random.nextInt(300).toDouble();
              _height = random.nextInt(300).toDouble();
              _color = Color.fromRGBO(
                 random.nextInt(300)
                ,random.nextInt(300)
                ,random.nextInt(300)
                ,1);

                _borderRadius = BorderRadius.circular(random.nextInt(100).toDouble());
}

}