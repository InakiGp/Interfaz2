import 'package:flutter/material.dart';

class AvatarPage extends StatefulWidget {
  
  @override
  State<AvatarPage> createState() => _AvatarPageState();
}

class _AvatarPageState extends State<AvatarPage> {
  String imagen = "http://assets.stickpng.com/images/585e4bd7cb11b227491c3397.png";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: [
            GestureDetector(
              onTap: (){
                setState(() {
                  
                });
                imagen = "https://cdn.pixabay.com/photo/2020/07/01/12/58/icon-5359553_960_720.png";
              },
            child: CircleAvatar(
              backgroundImage: NetworkImage("https://www.softzone.es/app/uploads-softzone.es/2018/04/guest.png?x=480&quality=20"),
              radius: 25.0,
            ),
            ),
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: GestureDetector(
              onTap: (){
                setState(() {
                  
                });
                imagen = "https://www.pngkit.com/png/full/202-2022599_usuario-ville-de-saint-etienne.png";
              },
              child: CircleAvatar(
                child: Text('SL'),
                backgroundColor: Colors.brown,

              ),
            ),
          ),
        ]
      ),
      body: Center(
        child: FadeInImage(
          image: NetworkImage(imagen), 
          placeholder: AssetImage("assets/jar-loading.gif"),
          fadeInDuration: Duration(milliseconds: 200),
        ),
      ),
    );
  }
}