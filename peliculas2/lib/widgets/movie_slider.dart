import 'package:flutter/material.dart';


class MovieSlider extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      width: double.infinity,
      height: 250,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [     
          Text('Populares',style: TextStyle(color: Colors.blue),)
        ],
      ),
    );
  }
}