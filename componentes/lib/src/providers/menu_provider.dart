import 'dart:convert';

import 'package:flutter/services.dart';

class MenuProvider {
  List<dynamic> opciones = [];

  MenuProvider() {
    CargarData();
  }

  Future <List <dynamic>> CargarData() async{
   // ignore: unused_local_variable
   final resp = await rootBundle.loadString('data/menu_opts.json').then((data) {
      print(data);
      Map dataMap = json.decode(data);
      print(dataMap['nombreApp']);
      opciones = dataMap['rutas'];
    });
    return opciones;
  }
}

final menuProvider = MenuProvider();
