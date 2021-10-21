import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {

final opciones = {'Uno','Dos','Tres','Cuatro','Cinco'};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SafeArea(child: Text('Componentes Temp')),
        centerTitle: true,
      ),
      body: ListView(
        children: _crearItemsCorta(),
      )
    );
  }
  List <Widget> _crearItems(){

    // ignore: deprecated_member_use
    List <Widget> lista = <Widget>[];

    for (var opt in opciones) {
        // ignore: unused_local_variable
        final tempWidget = ListTile(
          title: Text(opt),
        );
        lista.add(tempWidget);
        lista.add(Divider());

    }

    return lista;
  }

// ignore: unused_element
List <Widget> _crearItemsCorta(){
  
  var lista = opciones.map(( item ){
return Column(
  children: [
        ListTile(
      title: Text(item + '!'),
      subtitle: Text('Cualquier Cosas'),
      leading: Icon (Icons.add_comment_outlined),
      trailing: Icon(Icons.arrow_right),
      onTap: (){
        
      },
      ),
    Divider(
      thickness: 5,
      color: Colors.black,
    ),
  ],
);
  }).toList();
  return lista;
}
}