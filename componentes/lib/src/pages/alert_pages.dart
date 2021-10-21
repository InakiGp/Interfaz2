

import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Page'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon (Icons.add_location),
        onPressed: (){
          Navigator.pushNamed(context,'avatar');
        },
      ),
      body: Center(
        // ignore: deprecated_member_use
        child: RaisedButton(
           child: Text('Mostrar alerta',style: TextStyle(fontSize: 30),),
           color: Colors.blue,
           textColor: Colors.white,
           shape: StadiumBorder(),
          onPressed: () => _mostrarAlert(context),
          )
        ),
    );
  }

  _mostrarAlert(BuildContext context) {
    showDialog(
      context: context, 
      barrierDismissible: true,
      builder: (context) {

        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0)),
          title: Text('Título'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [Text('Contenido del texto'),
            FlutterLogo(size: 120.0)]
            ),
            actions: [FlatButton(
              onPressed: (){ Navigator.of(context).pop();
              }, 
              child: Text('Cancelar')),
              FlatButton(
              onPressed: (){
                Navigator.of(context).pop();
              }, 
              child: Text('Ok'))
              ],
        );
    }
    );
  }
}