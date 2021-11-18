import 'package:flutter/material.dart';
import 'dart:html';
import 'package:peliculas2/screens/screens.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Películas',
      initialRoute: 'home',
      routes: {
        'home': ( _ ) => const HomeScreen(),
        'details': ( _ ) => DetailsScreens(),
      },
      theme: ThemeData.light().copyWith(
        // ignore: prefer_const_constructors
        appBarTheme: AppBarTheme(
          color: Colors.green
        )
      )
    );
  }
}