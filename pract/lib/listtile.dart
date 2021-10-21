import 'package:flutter/material.dart';

class ListTile1 extends StatefulWidget {
  @override
  State<ListTile1> createState() => _ListTile1State();
}

class _ListTile1State extends State<ListTile1> {
  int suma = 1;
  @override 
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        appBar: AppBar(
          title: Text('ListTile1'),
          backgroundColor: Colors.green,
        ),
        body: Column(
          children: [
            Text('Ejemplo de imagen en columna'),
            
            FadeInImage(
              placeholder: NetworkImage('https://roszkowski.dev/images/2020-05-04/flutter_logo_leg.gif'),
               image: NetworkImage('https://www.linuxadictos.com/wp-content/uploads/Flutter.png'),
                fadeInDuration: Duration(seconds: 2),
               ),
               Text('Suma total: ${suma}')
            ],
      ),
      floatingActionButton: botones(),
      ),
    );
  }


Widget botones() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [ boton1(),FloatingActionButton(heroTag: null, onPressed: () {  },)
    ]
  );
}

Widget boton1() {
  return FloatingActionButton(
    child: Icon(Icons.add),
    onPressed: (){
      setState(() {
        
      });
      suma++;
    },
  );
}

}