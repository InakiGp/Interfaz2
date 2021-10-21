import 'package:flutter/material.dart';

class CardPage extends StatefulWidget {
  @override
  State<CardPage> createState() => _CardPage();
}
  class _CardPage extends State<CardPage>{
  String imagen = "https://fotoarte.com.uy/wp-content/uploads/2019/03/Landscape-fotoarte.jpg";
  int numero = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tarjeta Card'),
        centerTitle: true,
      ),
      
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 10.0),
        children: <Widget>[
          _cardTipo1(),
          SizedBox(height: 40,),_cardTipo2()
        ],
      )
    );
  }

  Widget _cardTipo1() {
    return Card(
      
      elevation: 20.0,
     shape: RoundedRectangleBorder(
       borderRadius: BorderRadius.circular(50.0)),
      child: Column(
        children: [ListTile(
          title: Text('Título'),
          leading: Icon (Icons.photo_album, color: Colors.blue,),
          subtitle: Text('Soy el subtítulo')),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: (){},
                 child: Text('Cancelar')),
                 TextButton(
                   onPressed: (){
                     setState(() {
                       
                     });
                      imagen = "https://cdn.shopify.com/s/files/1/0448/3609/4115/products/RM6BANG1_670x.png?v=1598480605";
                      numero++;
                   }, 
                   child: Text('Ok'))],
          )
        ],
      )
    );
  }

 Widget _cardTipo2() {
   final card = Card(
     clipBehavior: Clip.antiAlias,
     elevation: 10.0,
     shape: RoundedRectangleBorder(
       borderRadius: BorderRadius.circular(10.0)
     ),
     child: Column(
       children: [
         FadeInImage(
         //image: NetworkImage('https://klsdental.es/wp-content/uploads/2018/10/travel-landscape-01.jpg'), 
         image: NetworkImage(imagen),
         placeholder: AssetImage('assets/jar-loading.gif'),
         fadeInDuration: Duration( milliseconds: 300),
       ),
       Text("${numero}")
       ],
     ),
   );
    return Container(
      decoration: BoxDecoration(
        boxShadow: <BoxShadow>[
          BoxShadow(
          color: Colors.red,
          blurRadius: 10.0,
          spreadRadius: 2.0,
          offset: Offset(2.0,10.0)
          )
          ]   
      ),
      child: ClipRRect(
        child: card,
        borderRadius: BorderRadius.circular(30.0),
      ),
    );
 }

  Widget _cardTipo3() {
   final card = Card(
     clipBehavior: Clip.antiAlias,
     elevation: 10.0,
     shape: RoundedRectangleBorder(
       borderRadius: BorderRadius.circular(10.0)
     ),
     child: Column(
       children: [
         FadeInImage(
         //image: NetworkImage('https://klsdental.es/wp-content/uploads/2018/10/travel-landscape-01.jpg'), 
         image: NetworkImage('https://cdn.shopify.com/s/files/1/0448/3609/4115/products/RM6BANG1_670x.png?v=1598480605'),
         placeholder: AssetImage('assets/jar-loading.gif'),
         fadeInDuration: Duration( milliseconds: 300),
       ),
       Text('Imagen')
       ],
     ),
   );
    return Container(
      decoration: BoxDecoration(
        boxShadow: <BoxShadow>[
          BoxShadow(
          color: Colors.red,
          blurRadius: 10.0,
          spreadRadius: 2.0,
          offset: Offset(2.0,10.0)
          )
          ]   
      ),
      child: ClipRRect(
        child: card,
        borderRadius: BorderRadius.circular(30.0),
      ),
    );
 }


}