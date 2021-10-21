import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class InputsPage extends StatefulWidget {

  @override
  State<InputsPage> createState() => _InputsPageState();
}

class _InputsPageState extends State<InputsPage> {
  String nombre = '';
  String email = '';
  String fecha = '';
  bool estado = false;
  bool estado2 = true;

  TextEditingController _inputFieldDataController = TextEditingController();
  TextEditingController controlarNombre = TextEditingController();
  TextEditingController controlarContrasenia = TextEditingController();

  String opcionSeleccionada = 'Volar';

  List<String> poderes = ['Volar', 'Rayos X', 'Super Aliento', 'Super Fuerza'];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inputs de texto'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        children: [crearInput(),
        Divider(),  
        crearInput2(),
        Divider(),
                crearInput3(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    crearCheckbox(),
                    crearboton(),
                  ],
                ),
        Divider(),
        crearInput4(),
        Divider(),
        crearDropDown(),
        crearPersona(),
        crearEmail()],
      )
    );
  }


Widget crearInput() {
  return TextField(
    controller: controlarNombre,
    textCapitalization: TextCapitalization.sentences,
    decoration: InputDecoration(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20.0)
      ),
      counter: Text('Letras: ${nombre.length}'),
      hintText: 'Nombre de la persona',
      labelText: 'Nombre',
      helperText: 'Sólo es el nombre',
      suffixIcon: Icon(Icons.accessibility),
      icon: Icon(Icons.account_circle)
    ),
    onChanged: (valor){
      nombre = valor;
      print(nombre);
      setState(() {
        
      });
    },
  );
}


Widget crearInput2() {
  return TextField(
    textCapitalization: TextCapitalization.sentences,
    decoration: InputDecoration(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20.0)
      ),
      hintText: 'Email de la persona',
      labelText: 'Email',
      suffixIcon: Icon(Icons.alternate_email),
      icon: Icon(Icons.email)
    ),
    onChanged: (valor){
      email = valor;
      print(email);
      setState(() {
        
      });
    },
  );
}

Widget crearInput3() {
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
        controlarNombre.text = controlarContrasenia.text;
      });
    },
  );
}

Widget crearInput4() {
  return TextField(
    
    enableInteractiveSelection: false,
    controller: _inputFieldDataController,
    textCapitalization: TextCapitalization.sentences,
    decoration: InputDecoration(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20.0)
      ),
      hintText: 'Fecha de nacimiento de la persona',
      labelText: 'Fecha de nacimiento',
      suffixIcon: Icon(Icons.calendar_today_outlined),
      icon: Icon(Icons.calendar_today_sharp)
    ),
    onTap: (){
      FocusScope.of(context).requestFocus(new FocusNode());
      selectDate (context);
    },
    onChanged: (valor){
      setState(() {
        
      });
    },
  );
}

Widget crearPersona(){
  return ListTile(
    title: Text('Nombre es: $nombre')
  );
}

Widget crearEmail(){
  return ListTile(
    title: Text('Email es: $email')
  );
}


selectDate(BuildContext context) async {
    String formattedDate;
    
    DateTime? picked = await showDatePicker(
    context: context, 
    initialDate: new DateTime.now(),
    firstDate: new DateTime(2018), 
    lastDate: new DateTime(2025),
    locale: Locale('es','ES')
    );
    
    if (picked != null){
      setState(() {
        fecha = picked.toString();
        formattedDate = DateFormat('yyyy/MM/dd').format(picked);
        email = formattedDate;
        _inputFieldDataController.text = formattedDate;
      });
    }
}

  List <DropdownMenuItem<String>> getOpcionesDropDown(){
    
    List <DropdownMenuItem<String>> list = [];

    poderes.forEach((element) { 
        list.add(DropdownMenuItem(
          child: Text(element),
          value: element,
          )
          );
    });
    
    return list;
  }

 Widget crearDropDown() {

    return Row(
      children: [
        DropdownButton(
        value: opcionSeleccionada,
        items: getOpcionesDropDown(),
        onChanged: (opt){
          setState(() {
            opcionSeleccionada = opt.toString();
          });
        },
      )],
    );    
  }

Widget crearCheckbox() {
    return Checkbox(
          value: estado, 
          onChanged: (valor){
            setState(() {
              estado = valor!;
            });
          });
  }

  Widget crearboton() {
    return TextButton(
      onPressed: () {
        if(estado == true){
          estado = false;
        }
        else if(estado == false){
          estado = true;
        }
        setState(() {
          
        });
        },
    child: Icon(Icons.add),

    );
}
}