import 'package:flutter/material.dart';
import 'package:peliculas/providers/movies_provider.dart';
import 'package:peliculas/search/search_delegate.dart';
import 'package:peliculas/widgets/widgets.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {

  const HomeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final moviesProvider = Provider.of<MoviesProvider>(context);

    print(moviesProvider.onDisplayMovies);

    return Scaffold(
    appBar: AppBar(
    backgroundColor: Colors.orange[600],
    title: Center(child: Text('Películas en cines',textAlign: TextAlign.center)),
    elevation: 0,
    actions: [
      IconButton(
        onPressed: (){
          showSearch(context: context, delegate: MovieSearchDelegate());
        }, 
        icon: Icon(Icons.search_off_outlined)
        )
    ],
    ),
    body:  SingleChildScrollView(
      child: Column(
      children: [
        //Tarjetas Principales
        CardSwiper(movies : moviesProvider.onDisplayMovies),

        //Slider de películas
        MovieSlider(
          movies: moviesProvider.popularMovies,
          title: 'Populares',
          onNextPage: (){
            moviesProvider.getPopularMovies();
          }
        ),
      ],
    ),)
    );
  }
}