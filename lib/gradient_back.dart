import 'package:flutter/material.dart';
import 'card_image.dart';

class GradientBack extends StatelessWidget {

  String title ;

   GradientBack({ 
    required this.title
   }) ;

  @override
  Widget build(BuildContext context){
    
    final imgback = Container(
      height: 370.0,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors:[
            Color.fromRGBO(32, 38, 57, 1),
            Color.fromRGBO(63, 76, 119, 1),
            Color.fromRGBO(250, 250, 250, 1),
            Color.fromRGBO(250, 250, 250, 0.7),
          ] ,
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.0,0.5,0.95,1.0],
          tileMode: TileMode.clamp

          )
      ),

      alignment: const Alignment(-0.8,-0.6),

      child: Text(
        title,
        style:const TextStyle(
          color: Colors.white,
          fontSize: 30.0,
          fontFamily: "Lato",
          fontWeight: FontWeight.bold
        ),
      ),
    );

    return imgback;
  }
}