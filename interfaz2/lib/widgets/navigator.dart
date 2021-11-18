import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class NavigatorBar extends StatelessWidget {
  const NavigatorBar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          boxShadow:[
            BoxShadow(
                color: Colors.black38,
                blurRadius: 5.0,
                )
              ],
            ),
      child: BottomNavigationBar(
        elevation: 400,
        currentIndex: 0,
        selectedItemColor: Colors.blue,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        unselectedLabelStyle: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.house_sharp,),
            label:'Inicio'
            ),
            BottomNavigationBarItem(
            icon: Icon(Icons.watch_later_outlined,color: Colors.grey,),
            label:'Agenda'
            ),
            BottomNavigationBarItem(
            icon: Icon(Icons.messenger_outline_sharp,color: Colors.grey),
            label:'Comunicaciones'
            ),
            BottomNavigationBarItem(
            icon: Icon(Icons.list_outlined,color: Colors.grey),
            label:'Menú',
            
            ),
        ],    
      ),
    );
  }
}