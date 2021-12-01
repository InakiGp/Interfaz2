import 'package:flutter/material.dart';
import 'package:practica_login/Providerr/Login.dart';
import 'package:practica_login/Providerr/loginProvider.dart';
import 'package:practica_login/prueba.dart';
import 'package:provider/provider.dart';

void main() => runApp(AppState());

class AppState extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: ( _ ) => Providerr2(),lazy: false)
      ],
      child: MyApp(),
      );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Practica',
      initialRoute: '/',
      routes: Navigate.routes
    );
  }
}


class Navigate {
  static Map<String, Widget Function(BuildContext)>
   routes =   {
    '/' : (context) => princ(),
  };
}

class princ extends StatefulWidget {

  @override
  State<princ> createState() => _princState();
}

class _princState extends State<princ> {

  String usuario = "";

  String pass = "";

  @override
  Widget build(BuildContext context) {
    final resultsProvider = Provider.of<Providerr2>(context);
    return Scaffold(
      body: Container(
        child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
          child: Container(
              child: Column(
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
                        
                      }),
                  icon: Icon(Icons.visibility_outlined, color: Colors.white))),
          onChanged: (valor) => setState(() {
            pass = valor;
          }),          
        ), 
        botonEntrar(lista: resultsProvider.lista, usuario: usuario, contrasenia: pass)        
      ],
    ),           
          ),
        ),
      ),
      ),
    );   
  }
}

class botonEntrar extends StatelessWidget {

  final List<Result> lista;
  final String usuario;
  final String contrasenia;

  const botonEntrar({ Key? key, required this.lista, required this.usuario, required this.contrasenia }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
          child: Text('Entrar'),
          onPressed: (){
            if(comprobar(lista,usuario,contrasenia))
            Navigator.push(context, MaterialPageRoute(builder: (context) => pantalla2()));
        });
  }
  bool comprobar(List<Result> lista, String usuario, String contrasenia) {
    bool com = false;
    print(usuario.toString());
    print(contrasenia.toString());
    for(int i = 0; i < lista.length; i++){
      if(lista[i].usuario == usuario.toString() && lista[i].contrasenia == contrasenia.toString()){
        com = true;
      }
    }
    return com;
  }
}
