import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:interfaz2/http/Login.dart';

import '../http/Login.dart';

class Providerr extends ChangeNotifier {

  String _apiKey = '1E903-mQ_D3jJDSUsvCe62bo3yDqzp-xgrHTw46iWccU';
  String _baseUrl = 'opensheet.vercel.app';
  String _nombreDeLaHoja = '1';

  List<Result> lista = [];

  Providerr(){
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