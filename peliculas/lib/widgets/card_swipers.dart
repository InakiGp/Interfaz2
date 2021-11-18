import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:peliculas/models/movie.dart';
import 'package:infinite_carousel/infinite_carousel.dart';

class CardSwiper extends StatefulWidget {
  
  final List<Movie> movies;
 
  const CardSwiper({
    Key? key, required this.movies
    }) : super(key: key);

  @override
  State<CardSwiper> createState() => _CardSwiperState();
}

class _CardSwiperState extends State<CardSwiper> {
  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;
    final controller=SwiperController();
    
    if(this.widget.movies.length == 0){
      return Container(
        width: double.infinity,
        height: size.height * 0.5,
        child: Center(
          child: CircularProgressIndicator()
          )
          );
    }
    return Container(
      color: Colors.blue[600],
      width: double.infinity,
      height: size.height * 0.5,
      child: Swiper(
        controller: controller,
        loop: true,
        pagination: SwiperPagination(),
        itemCount:  widget.movies.length,
        layout: SwiperLayout.STACK,
        itemWidth: size.width * 0.6,
        itemHeight: size.height * 0.4, 
        itemBuilder: (BuildContext context,int index){

          final movie = widget.movies[index];
         
          movie.heroId = 'swiper-${movie.id}';

          return GestureDetector(
            onTap: () => Navigator.pushNamed(context, 'details', arguments: movie),
            child: Hero(
              tag: movie.heroId!,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: FadeInImage(
                  placeholder: AssetImage('assets/no-image.jpg'), 
                  image: NetworkImage( movie.fullPosterImg ),
                  fit: BoxFit.cover,
                  ),
              ),
            ),
          );
        }    
         
        )
        );
  }
}