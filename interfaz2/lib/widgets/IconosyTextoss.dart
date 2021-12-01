import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IconosyTextos extends StatelessWidget {

  final icono;
  final texto;

  const IconosyTextos({ Key? key, this.icono, this.texto }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [         
          Row(
            children: [
              SizedBox(width: 50,height: 180,),
              Column(children: [
              Image(image: AssetImage("assets/sombrero.png"),width: 70 ,),
              SizedBox(height: 20),
              Text('Alumnado del\n       centro',style: TextStyle(fontWeight: FontWeight.bold),)
              ],),
              SizedBox(width: 50,height: 180,),
              Column(children: [
              Image(image: AssetImage("assets/profesor.png"),width: 60 ,), 
              SizedBox(height: 20),  
              Text('Personal del\n       centro',style: TextStyle(fontWeight: FontWeight.bold))           
              ],),
              SizedBox(width: 50,height: 120,),
              Column(children: [                 
              Image(image: AssetImage("assets/covid.png"),width: 60 ,),
              Text('Información\n      covid',style: TextStyle(fontWeight: FontWeight.bold))
              ],)
            ],
          ),
          SizedBox(height: 70),
          Row(
            children: [
              SizedBox(width: 50),
              Column(
                children: [
              Image(image: AssetImage("assets/campana.png"),width: 50 ,),
              Text('Tablón de\n anuncios',style: TextStyle(fontWeight: FontWeight.bold))
                ],
              ),
              SizedBox(width: 70),
              Column(
                children: [
              Image(image: AssetImage("assets/calendario.png"),width: 50 ,),
              SizedBox(height: 10),
              Text('Calendario\n   escolar',style: TextStyle(fontWeight: FontWeight.bold))
                ],
              )
          ],)
        ],
      ),
    );
  }
    /*
    Center(
              child: Column(children: <Widget>[
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10,vertical: 70),
              child: Table(
                border: TableBorder.all(),
                children: [
                  TableRow(
                    children: [
                    Column(
                      children:[
                      Image(image: AssetImage("assets/sombrero.png"),width: 60,),
                      Text('Alumnado del centro'),
                    ]),
                    Column(
                      children:[
                      Image(image: AssetImage("assets/profesor.png"),width: 60,),
                      Text('Personal del centro')
                    ]),
                    Column(
                      children:[
                      Image(image: AssetImage("assets/covid.png"),width: 60,),
                      Text('Información Covid'),
                      SizedBox(height: 130,)
                    ]),
                  ]),
                  
                  TableRow( children: [
                    Icon(Icons.cake, size: 50,),
                    Icon(Icons.voice_chat, size: 50,),
                    Icon(Icons.add_location, size: 50,),
                  ]),
                ],
              ),
            ),
          ]));
          */}