import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:interfaz2/http/Login.dart';
import 'package:interfaz2/services/firebase_service.dart';
import 'package:provider/provider.dart';

class GoogleSignIn extends StatefulWidget {
  GoogleSignIn({Key? key}) : super(key: key);

  @override
  _GoogleSignInState createState() => _GoogleSignInState();
}

class _GoogleSignInState extends State<GoogleSignIn> {
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    final credencialesProvider = Provider.of<Login>(context);
    final lista = credencialesProvider.results;

    Size size = MediaQuery.of(context).size;

    return !isLoading
        ? Container(
            margin: EdgeInsets.only(top: 15),
            width: size.width * 0.85,
            height: 55,
            child: OutlinedButton.icon(
              icon: FaIcon(FontAwesomeIcons.google),
              onPressed: () async {
                setState(() {
                  isLoading = true;
                });
                FirebaseService service = new FirebaseService();
                try {
                  await service.signInwithGoogle();

                  User? user = FirebaseAuth.instance.currentUser;
                  String? usuarioGoogle = user!.email;
                  if (_comprobarCredenciales(lista, usuarioGoogle)) {
                    Navigator.pushNamed(context, "home");
                  } else {
                    _mostrarAlert(context);
                    
                  }
                } catch (e) {
                  if (e is FirebaseAuthException) {
                    print(e.message!);
                  }
                  if (e is PlatformException) {
                    print("No se ha seleccionado usuario");
                  }
                }
                setState(() {
                  isLoading = false;
                });
              },
              label: Text(
                "Accede a tu cuenta de Google",
                style:
                    TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
              ),
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                  side: MaterialStateProperty.all<BorderSide>(BorderSide.none)),
            ),
          )
        : Container(
            margin: EdgeInsets.all(15), child: CircularProgressIndicator());
  }
}

bool _comprobarCredenciales(
    List<Result> listaCredenciales, String? usuario) {
  bool credencialesCorrectas = false;

  print(usuario);
  print(listaCredenciales);
  for (int i = 0; i < listaCredenciales.length; i++) {
    print(listaCredenciales[i]);
    if (listaCredenciales[i].usuario == usuario.toString()) {
      credencialesCorrectas = true;
    }
  }

  return credencialesCorrectas;
}

void _mostrarAlert(BuildContext context) {
  showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) {
        return AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          title: Text("Error"),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text("No existe"),
            ],
          ),
          actions: [
            TextButton(
                onPressed: () => Navigator.pop( context ), child: Text("OK")),
                
          ],
        );
      });
}