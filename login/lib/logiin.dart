import 'package:flutter/material.dart';
import 'package:login/pantalla.dart';

class login extends StatefulWidget {

  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
  TextEditingController controlarContrasenia = TextEditingController();
  TextEditingController usuarioo = TextEditingController();
  String usuariooo = 'Juan';
  bool miValor = false;
  String contraseniaaa = '123456';
  bool estado = false;
  double valor = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LOGIN'),
      ),
      body: Column(
        children: [ SizedBox(height: 20,), usuario(),Divider(),contrasenia(),boton1(),Divider(),Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Edad'),edad(),SizedBox(width: 20,),Text(valor.toStringAsFixed(0))
          ],
        ),SizedBox(height: 5.0,),boton2()],
      ),
    );
  }

  Widget contrasenia() {
  return TextField(
    controller: controlarContrasenia,
    obscureText: estado,
    textCapitalization: TextCapitalization.sentences,
    decoration: InputDecoration(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20.0)
      ),
      hintText: 'Contraseña de la persona',
      labelText: 'Contraseña',
      suffixIcon: Icon(Icons.lock_clock),
      icon: Icon(Icons.lock)
    ),
    onTap: (){
      
    },
    onChanged: (valor){
      setState(() {
        
      });
    },
  );
}
  

  Widget usuario() {
  return TextField(
    controller: usuarioo,
    textCapitalization: TextCapitalization.sentences,
    decoration: InputDecoration(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20.0)
      ),
      hintText: 'Usuario',
      labelText: 'Usuario',
      suffixIcon: Icon(Icons.usb_rounded),
      icon: Icon(Icons.usb_rounded)
    ),
    onTap: (){
      
    },
    onChanged: (valor){
      setState(() {
        
      });
    },
  );
}

  Widget boton2() {
    return TextButton(
      style: TextButton.styleFrom(
      primary: Colors.red,
      backgroundColor: Colors.black
            
    ),
      onPressed: () {
        setState(() {
          
        });
        if(controlarContrasenia.text == contraseniaaa){
          if(usuariooo == usuarioo.text){
            Navigator.push(context, MaterialPageRoute(builder: (context) => pantallaa()));
          }
        }
        if(controlarContrasenia.text != contraseniaaa){
          if(usuariooo != usuarioo.text){
            alerta1();
          }
        }

        if(controlarContrasenia.text == contraseniaaa){
          if(usuariooo != usuarioo.text){
            alerta2();
          }
        }

        if(controlarContrasenia.text != contraseniaaa){
          if(usuariooo == usuarioo.text){
            alerta3();
          }
        }
   
        },
    // ignore: prefer_const_constructors
    child: Text('Entrar'),
      
    );
  }

 Widget boton1() {
   return CheckboxListTile(
     value: miValor,
     title: Text('Ocultar contraseña'),
      onChanged: (valor){
        miValor = valor!;
        
        setState(() {
          estado = miValor;
        });
   }
   );
 }

   alerta1() {
    showDialog(
      context: context,
      builder: (buildcontext) {
         return AlertDialog(
              title: Text('El usuario y la contraseña son erróneos'),
              actions: [
                FlatButton(
                  color: Colors.pink,
                  onPressed: (){
                    Navigator.pop(context);
                }, child: Text('Ok')
                )
              ],
            );
  });
  }

  void alerta2() {
    showDialog(
      context: context,
      builder: (buildcontext) {
        return AlertDialog(
              title: Text('El usuario es erróneo'),
              actions: [
                FlatButton(
                  color: Colors.pink,
                  onPressed: (){
                    Navigator.pop(context);
                }, child: Text('Ok')
                )
              ],
            );
  });
  }

  void alerta3() {
    showDialog(
      context: context,
      builder: (buildcontext) {
        return AlertDialog(
              title: Text('La contraseña es errónea'),
              actions: [
                FlatButton(
                  color: Colors.pink,
                  onPressed: (){
                    Navigator.pop(context);
                }, child: Text('Ok')
                )
              ],
            );
  });
  }

 Widget edad() {
   return Slider(
     onChanged: (double value) {
       setState(() {
         valor = value;
       });
      }, 
     value: valor,
     min: 0,
     max: 100
   );
  }
  
}