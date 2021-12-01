import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:practica_login/Providerr/Login.dart';


class Providerr2 extends ChangeNotifier {

  String _apiKey = '19JoQsyFkXqwi00cdJ8PcYlSHs9-UXNGRdTPrfMuTEgU';
  String _baseUrl = 'opensheet.vercel.app';
  String _nombreDeLaHoja = 'prac';

  List<Result> lista = [];

  Providerr2(){
    print("Iniciado");
    this.getOnDisplay();
  }

  Future <String> _getJsonData() async{
    final url = Uri.https(_baseUrl,_apiKey+'/'+_nombreDeLaHoja);
    final response = await http.get(url);
    return response.body;
  }

   getOnDisplay()async{
     String jsonData = await this._getJsonData();
     jsonData = '{"results":'+jsonData+"}";
     final login = Login.fromJson(jsonData);
     lista = [...login.results];
     notifyListeners();
   }
}