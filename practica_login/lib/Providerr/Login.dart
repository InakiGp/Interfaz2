

import 'dart:convert';

class Login {
    Login({
       required this.results,
    });

    List<Result> results;
    
    factory Login.fromJson(String str) => Login.fromMap(json.decode(str));

    factory Login.fromMap(Map<String, dynamic> json) => Login(
        results: List<Result>.from(json["results"].map((x) => Result.fromMap(x))),
    );
}

class Result {
    Result({
      required  this.id,
      required  this.usuario,
      required  this.contrasenia,
    });

    String id;
    String usuario;
    String contrasenia;

    factory Result.fromJson(String str) => Result.fromMap(json.decode(str));

    factory Result.fromMap(Map<String, dynamic> json) => Result(
        id: json["id"],
        usuario: json["usuario"],
        contrasenia: json["contrasenia"],
    );
}
