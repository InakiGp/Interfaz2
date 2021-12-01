import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:interfaz2/http/Login.dart';
import 'package:interfaz2/providers/ProviderResponse.dart';
import 'package:interfaz2/services/firebase_service.dart';
import 'package:provider/provider.dart';




class PortalSeneca extends StatefulWidget {

  @override
  State<PortalSeneca> createState() => _PortalSenecaState();
}

class _PortalSenecaState extends State<PortalSeneca> {

 

  @override
  Widget build(BuildContext context) {

    final credenciales = Provider.of<Providerr>(context);
    
    return Scaffold( 
      resizeToAvoidBottomInset: false,
      backgroundColor: Color.fromRGBO(1, 52, 106, 10),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 0),
          margin: EdgeInsets.symmetric(vertical: 0,horizontal: 20),
          child: Column(
            children: [
              SizedBox(height: 70,),
              Text('iSéneca',style: TextStyle(fontSize: 90,color: Colors.white,fontFamily: 'Raleway',fontWeight: FontWeight.bold),),
              SizedBox(height: 20),
              CajasTexto(),            
                SizedBox(height: 60),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      
                      showAlertDialog(context);
                    });
                  },
                  child: Text('No recuerdo mi contraseña',style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold,decoration: TextDecoration.underline),)
                  ),
                SizedBox(height: 160,),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 0,vertical: 30),
                  child: Row(
                    children: [
                      
                     Image(image: AssetImage('assets/A.PNG')),
                                            
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Junta de Andalucía',style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
                          Text('Consejería de Educación y Deporte',style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),     
                        ],
                      )
                    ],
                  ),
                ),
                 Text('v11.3.0',style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),          
            ]
          ),
        ),
      ),
    );
  }
}

showAlertDialog(BuildContext context) {

  AlertDialog alert = AlertDialog(
    title: Text("AlertDialog"),
    content: Text("Contraseña olvidada"),
    actions: [
      RaisedButton(
        child: Text('Ok'),
        onPressed: (){
          Navigator.pop(context);
      })
    ],
  );

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

class CajasTexto extends StatefulWidget {
  @override
  _CajasTextoState createState() =>_CajasTextoState();
}

class _CajasTextoState extends State<CajasTexto> {
  String usuario = "";
  String contrasenia = "";
  bool mostrarPassword = true;

  @override
  Widget build(BuildContext context) {
    final resultsProvider = Provider.of<Providerr>(context);
    return Column(
      children: [
        TextField(           
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white24,
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white)),
              hintStyle: TextStyle(color: Colors.white),
              hintText: "Usuario",
            ),
            onChanged: (valor) {
              setState(() {
                usuario = valor;
              });
            }),
        SizedBox(height: 20),
        TextField(
          decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white24,
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white)),
              hintText: "Contraseña",
              hintStyle: TextStyle(color: Colors.white),
              suffixIcon: IconButton(
                  onPressed: () => setState(() {
                        mostrarPassword = !mostrarPassword;
                      }),
                  icon: Icon(Icons.visibility_outlined, color: Colors.white))),
          onChanged: (valor) => setState(() {
            contrasenia = valor;
          }),
          obscureText: mostrarPassword,
        ),
        SizedBox(height: 40,),
        Row(children: [
          SizedBox(width: 60,),
          botonEntrar(lista: resultsProvider.lista, usuario: usuario, contrasenia: contrasenia),

          SizedBox(width: 60,),
          Container(
            child: GestureDetector(
              onTap: () async {
                FirebaseService service = new FirebaseService();
                await service.signInwithGoogle();
                setState(() {
                                    
                });
                
              },
              child: Image(image: AssetImage('assets/google.png'),
              height: 50,
              width: 50,
              ),
            )
            )
        ],
      ),  
      ],
    );
  }
}

class botonEntrar extends StatefulWidget {

  final List<Result> lista;
  final String usuario;
  final String contrasenia;

  const botonEntrar({ Key? key, required this.lista, required this.usuario, required this.contrasenia }) : super(key: key);

  @override
  State<botonEntrar> createState() => _botonEntrarState();
}

class _botonEntrarState extends State<botonEntrar> {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
              padding: EdgeInsets.symmetric(horizontal: 40,vertical: 20),
              child: Text('Entrar',style: TextStyle(fontSize: 14.5,color: Colors.blue[900]),),
              onPressed: (){
                setState(() {
                  
                });
                if(comprobar(widget.lista,widget.usuario,widget.contrasenia))
                Navigator.pushNamed(context, 'pantalla');
              }
              );
  }

  bool comprobar(List<Result> lista, String usuario, String contrasenia) {
    bool com = false;
    print(usuario.toString());
    print(contrasenia.toString());
    for(int i = 0; i < lista.length; i++){
      if(lista[i].usuario == usuario.toString() && lista[i].contrasea == contrasenia.toString()){
        com = true;
      }
    }
    return com;
  }
}