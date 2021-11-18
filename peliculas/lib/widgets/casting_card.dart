import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:peliculas/models/models.dart';
import 'package:peliculas/providers/movies_provider.dart';
import 'package:provider/provider.dart';

class CastingCard extends StatelessWidget {

  final int movieId;

  const CastingCard(this.movieId);

  @override
  Widget build(BuildContext context) {

    final moviesProvider = Provider.of<MoviesProvider>(context);

    return FutureBuilder(
      future: moviesProvider.getMovieCast(movieId),
      builder: ( _, AsyncSnapshot<List<Cast>> snapshot){
         
     if(!snapshot.hasData){
       return Container(
         height: 180,
         child: CupertinoActivityIndicator(),
       );
     }

     final List<Cast> cast = snapshot.data!;

    return Container(
      color: Colors.green[400],
      margin: EdgeInsets.only(bottom: 0),
      padding: EdgeInsetsDirectional.only(top: 5),
      width: double.infinity,
      height: 180,
      //color: Colors.red,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, int index){
          return _CastCard(cast[index]);
        },
        ),
    );
     }
      );
  }
}

class _CastCard extends StatelessWidget {

  final Cast actor;

  const _CastCard(this.actor);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      width: 110,
      height: 100,
     //color: Colors.green,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: FadeInImage(
              placeholder: AssetImage('assets/no-image.jpg'), 
              image: NetworkImage(actor.fullProfilePath),
              height: 140,
              width: 100,
              fit: BoxFit.cover,
              ),
          ),
          SizedBox(height: 5,),
          Text(actor.name,overflow: TextOverflow.ellipsis,maxLines: 2,textAlign: TextAlign.center,)
      ],),
    );
  }
}