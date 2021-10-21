
import 'package:componentes/src/pages/alert_pages.dart';
import 'package:componentes/src/providers/menu_provider.dart';
import 'package:componentes/src/utils/icono_string_util.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes'),
      ),
      body: _lista(),
    );
  }

  Widget _lista() {
   // print(menuProvider.opciones);
  // menuProvider.CargarData().then( (opciones){
  // print('_lista');
  // print(opciones);
  // });

    return FutureBuilder(
      future: menuProvider.CargarData(),
      initialData: [],
      builder: (BuildContext context, AsyncSnapshot snapchot){
        print(snapchot.data);
        return ListView(
            children: _listaItems(snapchot.data,context)
        );
      },
    );
  }

  List<Widget> _listaItems(List<dynamic> data, BuildContext context) {
    
    final List<Widget> opciones = [];

    data.forEach((opt) {

      final widgetTemp = ListTile(
        title: Text(opt ['texto']),
        leading: getIcon(opt ['icon']),
        trailing: Icon (Icons.add_comment_rounded),
        onTap: (){
            /* final route = MaterialPageRoute(builder:(context) {
              return AlertPage();
            }
          
            );
*/
            Navigator.
            pushNamed(context, opt ['ruta']);
        }

      );

      opciones.add(widgetTemp);

     });
    
    return opciones;
  }
}
