import 'dart:async';

import 'package:flutter/material.dart';

class ListaPage extends StatefulWidget {


  @override
  _ListaPageState createState() => _ListaPageState();
}

class _ListaPageState extends State<ListaPage> {
  
  ScrollController scrollController = new ScrollController();

  List<int> listaNumeros = [];
  int ultimoItem = 0;
  bool isLoading =  false;
@override
void initState(){
  super.initState();

  agregar10();

  scrollController.addListener(() {
    if(scrollController.position.pixels == scrollController.position.maxScrollExtent){
      fetchData();
    }
  });
}

@override
void dispose(){
  super.dispose();
  scrollController.dispose();
}

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Listas'),
      ),
      body: Stack(children: [crearListas(),crearLoading()],),
    );
  }
  Widget crearListas(){
    return RefreshIndicator(
    onRefresh: obtenerPagina1,
    child: ListView.builder(
      controller: scrollController,
      itemCount :  listaNumeros.length,
      itemBuilder: (BuildContext context, int index) { 
        final imagen = listaNumeros[index];
        return FadeInImage(
          placeholder: NetworkImage('https://www.blogdelfotografo.com/wp-content/uploads/2020/04/fotografo-paisajes.jpg'),
           image: NetworkImage('https://picsum.photos/500/300?image=$index'),
       
    );
  })
    );
    }

    Future<Null> obtenerPagina1()async{
      final duration = new Duration(seconds:2);
      new Timer(duration, () { 
        listaNumeros.clear();
        ultimoItem++;
        agregar10();

      });

      return Future.delayed(duration);

    }
void agregar10(){
  for(var i = 1; i < 10; i++){
    ultimoItem++;
    listaNumeros.add(ultimoItem);
  }
  setState(() {
    
  });
}

 Future<Null> fetchData() async {
   isLoading = true;
   setState(() {
     
   });
    final duration = new Duration(seconds: 2);
   new Timer(duration, respuestaHTTP);
 }

void respuestaHTTP(){
    isLoading = false;

    scrollController.animateTo(
      scrollController.position.pixels + 100,
      curve: Curves.fastOutSlowIn, duration: Duration(
        milliseconds: 250
        )
    );
}

 Widget crearLoading() {
    if( isLoading){
      return Column(
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.max,
        children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
              FloatingActionButton(
                child: Icon(Icons.add),
                onPressed: () { 
                fetchData();
                agregar10();
               },

              )
          ],),
          SizedBox(height: 15.0,)
      ],);
      
      
      
       CircularProgressIndicator();
    }else{
      return Container();
    }
  }

}