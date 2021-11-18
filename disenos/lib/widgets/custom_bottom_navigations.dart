import 'package:flutter/material.dart';

class NavigationBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: 1,
      
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor: Colors.pink,
      backgroundColor: Color.fromRGBO(55, 57, 84, 1),
      unselectedItemColor: Color.fromRGBO(116, 117, 152, 1),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: 'Calendario'
            ),
          BottomNavigationBarItem(
            icon: Icon(Icons.pie_chart_outline_outlined),
            label: 'Gráfica'
            ),
            BottomNavigationBarItem(
            icon: Icon(Icons.supervised_user_circle_outlined),
            label: 'Usuarios'
            ),
        ],
    );
  }
}