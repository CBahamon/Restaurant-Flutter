import 'package:flutter/material.dart';
import 'package:travel/floating_action_button_green.dart';

class CardImage extends StatelessWidget {

String imgUrl ;
        
 CardImage({ required this.imgUrl }) ;

  @override
  Widget build(BuildContext context){

    final card = Container(
      height: 380.0,
      width: 250.0,
      margin: const EdgeInsets.only(
        top: 110.0,
        left: 20.0,
      ),

      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(imgUrl)
          ),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          shape:  BoxShape.rectangle,
          boxShadow:const  <BoxShadow>[
            BoxShadow(
              color: Colors.black38,
              blurRadius: 15.0,
              offset: Offset(0.0, 0.7)
              )
          ]
      ),
    );

    return Stack(
      alignment: Alignment(0.9, 1.18),
      children: [
        card,
        FloatingActionButtonGreen()
      ],
    );
  }
}