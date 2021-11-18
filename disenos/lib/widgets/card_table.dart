import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Tabla();
  }
}

class Tabla extends StatelessWidget {
  const Tabla({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Table(
      children: [
        TableRow(
          children: [
            _SingleCard(icon: Icons.apps, texto: 'General', color: Colors.blue,),
            _SingleCard(icon: Icons.bus_alert, texto: 'Transporte', color: Colors.purple.shade200,),
          ]
        ),
        TableRow(
          children: [
            _SingleCard(icon: Icons.shopping_bag_rounded, texto: 'Compras', color: Colors.pink.shade300,),
            _SingleCard(icon: Icons.short_text_outlined, texto: 'Bills', color: Colors.green,),
          ]
        ),
        TableRow(
          children: [
            _SingleCard(icon: Icons.ac_unit_rounded, texto: 'Enterntainment', color: Colors.blue,),
            _SingleCard(icon: Icons.house, texto: 'Grocery', color: Colors.pink.shade700,),
          ]
        ),
        TableRow(
          children: [
            _SingleCard(icon: Icons.apps, texto: 'General', color: Colors.blue,),
            _SingleCard(icon: Icons.bus_alert, texto: 'Transporte', color: Colors.purple,),
          ]
        ),
        TableRow(
          children: [
            _SingleCard(icon: Icons.apps, texto: 'General', color: Colors.blue,),
            _SingleCard(icon: Icons.bus_alert, texto: 'Transporte', color: Colors.purple,),
          ]
        ),
        TableRow(
          children: [
            _SingleCard(icon: Icons.apps, texto: 'General', color: Colors.blue,),
            _SingleCard(icon: Icons.bus_alert, texto: 'Transporte', color: Colors.purple,),
          ]
        ),
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {

  final IconData icon;
  final String texto;
  final Color color;

  const _SingleCard({
    Key? key,
    required this.icon,
    required this.texto,
    required this.color})
     : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 5,
            sigmaY: 5
          ),
          child: Container(
            height: 180,
            decoration: BoxDecoration(
              color: Color.fromRGBO(62, 66, 107, 0.9),
              borderRadius: BorderRadius.circular(20)
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                 backgroundColor: color,
                 radius: 30,
                 child: Icon(icon, size: 35, color: Colors.white),
                ),
                SizedBox(height: 10,),
                Text(texto,style: TextStyle(color: Colors.white, fontSize: 18),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}