import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';


class PortalSeneca extends StatefulWidget {

  @override
  State<PortalSeneca> createState() => _PortalSenecaState();
}

class _PortalSenecaState extends State<PortalSeneca> {
  final url = "http://www.google.es";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      resizeToAvoidBottomInset: false,
      backgroundColor: Color.fromRGBO(1, 52, 106, 10),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 0),
        margin: EdgeInsets.symmetric(vertical: 0,horizontal: 20),
        child: Column(
          children: [
            SizedBox(height: 80,),
            Text('iSéneca',style: TextStyle(fontSize: 90,color: Colors.white,fontFamily: 'Raleway',fontWeight: FontWeight.bold),),
            SizedBox(height: 20),
            CajasDeTexto(texto: 'Usuario', icono: null,),
            SizedBox(height: 20),
            CajasDeTexto(texto: 'Contraseña', icono: Icon(Icons.remove_red_eye_outlined,color: Colors.white,)),
            SizedBox(height: 20,),            
            RaisedButton(
              padding: EdgeInsets.symmetric(horizontal: 160,vertical: 20),
              child: Text('Entrar',style: TextStyle(fontSize: 14.5,color: Colors.blue[900]),),
              onPressed: (){
                Navigator.pushNamed(context, 'pantalla');
              }
              ),
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

class CajasDeTexto extends StatelessWidget {

  final texto;
  final icono;
  
  const CajasDeTexto({
    Key? key, this.texto, this.icono,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    TextEditingController con = TextEditingController();
    String valor;
    return Container(
      decoration: BoxDecoration(
        color: Colors.white12,
        borderRadius: BorderRadius.circular(10)
      ),
      child: TextField(
        controller: con,
        onTap: (){
    
      },
      onChanged: (valor){
        
      },
        decoration: InputDecoration(  
          hintStyle: TextStyle(color: Colors.white),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: Colors.white
            )
          ),
          labelText: texto,
          labelStyle: TextStyle(color: Colors.white),
          fillColor: Colors.white12,
          suffixIcon: icono,
        ),
      ),
    );
  }
}