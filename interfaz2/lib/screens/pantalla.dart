import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:interfaz2/widgets/IconosyTextoss.dart';
import 'package:interfaz2/widgets/navigator.dart';

class Pantalla extends StatelessWidget {
  const Pantalla({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       resizeToAvoidBottomInset: false,
      bottomNavigationBar: NavigatorBar(),
      body: Stack(
        children: [
          const SizedBox(
            width: double.infinity,
            height: 200.0,
            child: const DecoratedBox(
              decoration: BoxDecoration(color: Color.fromRGBO(1, 52, 106, 10)),
            ),
          ),
          Container(
            height: double.infinity,
            width: double.infinity,
            child: Column(
              children: [
              SizedBox(
                height: 50,
              ),
              Text(
                'iSéneca',
                style: TextStyle(
                    fontSize: 60,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 200,
                child: Carta(),
              ),
              IconosyTextos()
            ]),
          ),
        ],
      ),
    );
  }
}

class Carta extends StatelessWidget {
  const Carta({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(    
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        children: [
          ListTile(
            contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
            title: Text('Chia Díaz, Margarita',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
            subtitle: Text(
              '\nI.E.S. Llanes\nPerfil Direcciónn',
              style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            trailing: Icon(Icons.people,color: Colors.black,),
          ),
          TableCell(
            verticalAlignment: TableCellVerticalAlignment.top,
            child: Container(
              height: 90,
              width: double.infinity,
              color: Colors.blue,
              child: Row(
                children: [
                  SizedBox(
                    width: 60,
                  ),
                  Icon(Icons.alarm, color: Colors.white,
                  ),
                  SizedBox(width: 10,),
                  Text('Avisos',style: TextStyle(color: Colors.white),
                  ),
                  VerticalDivider(color: Colors.white,width: 90,),                           
                  Icon(Icons.book, color: Colors.white),
                  SizedBox(width: 10,),
                  Text('Bandeja de firmas',style: TextStyle(color: Colors.white)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
