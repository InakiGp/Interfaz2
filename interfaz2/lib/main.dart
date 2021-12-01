import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:interfaz2/providers/ProviderResponse.dart';
import 'package:interfaz2/screens/portal.dart';
import 'package:interfaz2/services/google_sign_in.dart';
import 'package:provider/provider.dart';
import 'screens/pantalla.dart';

  void main() async { 
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(AppState());
}

class AppState extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: ( _ ) => Providerr(),lazy: false)
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
      title: '/',
      initialRoute: '/',
      routes: Navigate.routes
    );
  }
}

class Navigate {
  static Map<String, Widget Function(BuildContext)>
   routes =   {
    '/' : (context) => PortalSeneca(),
    'home'  : (context) => Pantalla(),
    'sign-in': (context) => GoogleSignIn()
  };
}