import 'package:flutter/material.dart';

class CajasTexto extends StatelessWidget {

  final con = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: con,
      
    );
  }
}