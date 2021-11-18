import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:peliculas/models/movie.dart';
import 'package:peliculas/widgets/widgets.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({ Key? key }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final Movie movie = ModalRoute.of(context)!.settings.arguments as Movie;
    
    return Scaffold(
    body:  CustomScrollView(
      slivers: [
        _CustomAppBar( movie ),
        SliverList(
          delegate: SliverChildListDelegate(
        [
          _PosterAndTitle(movie),
          _Overview(movie),
          _Overview(movie),
          CastingCard(movie.id),
              ]
        )),
        //SliverFillRemaining(),
      ],
    )
    );
  }
}
 class _CustomAppBar extends StatelessWidget {
 
   final Movie movie;

  const _CustomAppBar(this.movie);

   @override
   Widget build(BuildContext context) {
     return SliverAppBar(
       backgroundColor: Colors.indigo,
       expandedHeight: 200,
       floating: false,
       pinned: true,
       flexibleSpace: FlexibleSpaceBar(
         titlePadding: EdgeInsets.all(0),
         title: Container(
           padding: EdgeInsets.only(bottom: 10, left: 10, right: 10),
           color: Colors.black12,
           alignment: Alignment.bottomCenter,
           width: double.infinity,
           child: Text(movie.title,textAlign: TextAlign.center,),
         ),
         centerTitle: true,
         background: FadeInImage(
           placeholder: AssetImage('assets/loading.gif'), 
           image: NetworkImage(movie.fullBackdropPath),
           fit: BoxFit.cover,
         ),
     )
     );
   }
 }

 class _PosterAndTitle extends StatelessWidget {
 
   final Movie movie;
  
  const _PosterAndTitle(this.movie);

   @override
   Widget build(BuildContext context) {
     final size = MediaQuery.of(context).size;
     return Container(
       color: Colors.green[400],
       margin: EdgeInsets.only(top: 0),
       padding: EdgeInsets.all(20),
       child: Row(
         children: [
           Hero(
             tag: movie.heroId!,
             child: ClipRRect(
               borderRadius: BorderRadius.circular(20),
               child: FadeInImage(
                      fit: BoxFit.cover,
                      placeholder: NetworkImage('https://via.placeholder.com/200x300'), 
                      image: NetworkImage(movie.fullPosterImg),
                      height: 150,
                      ),
             ),
           ),
           SizedBox(width: 20),
           ConstrainedBox(
             constraints: BoxConstraints(maxWidth: size.width - 250),
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
              children: [
           
                Text(movie.title,style: Theme.of(context).textTheme.headline5),
                Text(movie.originalTitle,style: Theme.of(context).textTheme.subtitle1, overflow: TextOverflow.ellipsis, maxLines: 2,),
                Row(
                  children: [
                    Icon(Icons.star_outline),
                    Text('${movie.voteAverage}',style: Theme.of(context).textTheme.caption,)
                  ],
                )
              ],
             ),
           )
         ],
       )
     );
   }
 }

class _Overview extends StatelessWidget {

  final Movie movie;

  const _Overview(this.movie);


  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green[400],
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Text(movie.overview,
      textAlign: TextAlign.justify,
      style: Theme.of(context).textTheme.subtitle1,
      )
    );
  }
}