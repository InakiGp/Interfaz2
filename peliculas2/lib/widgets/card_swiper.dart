import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';


// ignore: use_key_in_widget_constructors
class CardSwiper extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Container(
      width: double.infinity,
      height: size.height * 0.5,
      child: Swiper(
        itemCount: 10,
        layout: SwiperLayout.STACK,
        itemHeight: size.height * 0.6,
        itemWidth: size.width * 0.9,
        itemBuilder: ( _, int index ){

          return GestureDetector(
            onTap: () => Navigator.pushNamed(context, 'details'),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: FadeInImage(
                placeholder: AssetImage('assets/no-image.jpg'),
                 image: AssetImage('assets/no-image.jpg'),
                fit: BoxFit.cover
                 ),
            ),
          );
        },
        ),
    );
  }
}