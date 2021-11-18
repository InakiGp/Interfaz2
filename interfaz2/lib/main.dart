import 'package:flutter/material.dart';
import 'package:interfaz2/screens/portal.dart';

import 'screens/pantalla.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'portal',
      routes: {
        'portal': ( context ) => PortalSeneca(),
        'pantalla': ( context ) => Pantalla()
      }, 
    );
  }
}