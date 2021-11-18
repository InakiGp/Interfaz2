import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class BasicDesignScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image(image: AssetImage('assets/landscape.jpg'),),
          Title(),

          ButtonSection(),


          Container(
            margin: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
            child: Text('Et dolore occaecat sit magna fugiat nulla elit mollit id. Exercitation sunt incididunt magna labore duis et tempor sunt. Est ea ullamco ad mollit. Mollit id sit aute ea ipsum id ea qui Lorem et enim irure elit, Et dolore occaecat sit magna fugiat nulla elit mollit id. Exercitation sunt incididunt magna labore duis et tempor sunt. Est ea ullamco ad mollit. Mollit id sit aute ea ipsum id ea qui Lorem et enim irure elit.'))

      ],)
   );
  }
}



class Title extends StatelessWidget {

  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 30,),
      child: Row(
        
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Oeschinen Lake Campground', style: TextStyle( fontWeight: FontWeight.bold)),
              Text('Kandersteg, Switzerland', style: TextStyle(color: Colors.black45))
            ],
          ),
          Expanded(child: Container()),
          Icon(Icons.star, color: Colors.red),
          Text('41')
        ],
      ),
    );
  }
}
class ButtonSection extends StatelessWidget {
  const ButtonSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 25,horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
        customButton(icon: Icons.call, text: 'CALL'),
        customButton(icon: Icons.navigation, text:'ROUTE'),
        customButton(icon: Icons.share, text:'SHARE'),
      ],),
    );
  }
}

class customButton extends StatelessWidget {

final IconData icon;
final String text;

  const customButton({
    Key? key, required this.icon, required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: Colors.blue),
        Text(text, style: TextStyle(color: Colors.blue))
      ],
    );
  }
}
