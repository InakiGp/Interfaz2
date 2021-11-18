import 'package:flutter/material.dart';
import 'package:peliculas2/widgets/movie_slider.dart';
import 'package:peliculas2/widgets/widgets.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // ignore: prefer_const_constructors
        title: Text('Películas en Cines'),
        centerTitle: true,
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(Icons.search), 
            onPressed: () {  },)
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
        children: [
          CardSwiper(),

          MovieSlider(),
        ],
      ),)
      );
  }
}