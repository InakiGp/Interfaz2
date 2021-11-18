import 'package:componentes/src/pages/InputsPage.dart';
import 'package:componentes/src/pages/alert_pages.dart';
import 'package:componentes/src/pages/animated_container.dart';
import 'package:componentes/src/pages/avatar_page.dart';
import 'package:componentes/src/pages/card_page.dart';
import 'package:componentes/src/pages/home_page.dart';
import 'package:componentes/src/pages/listview_page.dart';
import 'package:componentes/src/pages/slider_home_page.dart';
import 'package:flutter/material.dart';

  Map <String, WidgetBuilder> getAplicationRoute(){

  return {
        '/' : (BuildContext context) => HomePage(),
        'alert' : (BuildContext context) => AlertPage(),
        'avatar' : (BuildContext context) => AvatarPage(),
        'card' : (BuildContext context) => CardPage(),
        'animatedContained' : (BuildContext context) => AnimatedContainerPage(),
        'inputs' : (BuildContext context) => InputsPage(),
        'slider' : (BuildContext context) => SliderPage(),
        'list' : (BuildContext context) => ListaPage()
        
      };
  }