import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  
  final usuarioo = TextEditingController();
  final contrasenia = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Column(
        
        children: [
          SizedBox(height: 120,),
          Text('iSéneca',style: TextStyle(fontSize: 100,color: Colors.white,),),
          SizedBox(height: 30),
          TextField(
    controller: usuarioo,
    decoration: InputDecoration(
      fillColor: Colors.white38,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      hintText: 'Usuario',
      labelText: 'Usuario',
    ),
    onTap: (){
      
    },
   
  ),
  SizedBox(height: 30),
  TextField(
    controller: contrasenia,
    textCapitalization: TextCapitalization.sentences,
    decoration: InputDecoration(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0)
      ),
      hintText: 'Contraseña',
      labelText: 'Contraseña',
      
    ),
    onTap: (){
      
    },
  ),
  SizedBox(height: 40,),
  RaisedButton(
 child: Text("Entrar"),
 padding: EdgeInsets.symmetric(horizontal: 80),
 color: Colors.white,
 onPressed: ()  {
  
 },
),SizedBox(height: 30,),
  GestureDetector(
    child: Text('No recuerdo mi contraseña',style: TextStyle(color: Colors.white,fontSize: 30,decoration: TextDecoration.underline),),
  onTap: () {

  },)
        ],
      ),
    );
  }
}