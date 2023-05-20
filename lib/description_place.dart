import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DescriptionPlace extends StatelessWidget {
    String namePlace;
    String descriptionPlace;  
    int amountStar;  

   DescriptionPlace({super.key, 
      
      required  this.namePlace,
      required this.descriptionPlace,
      required this.amountStar,
    }) ;

  @override
  Widget build(BuildContext context) {
    var edgeInsets = const EdgeInsets.only(top: 320.0, left: 20.0, right: 20.0);
  


    var tittleDescription = Text(
      namePlace,
      style: const TextStyle(
          fontSize: 30.0, fontWeight: FontWeight.bold, color: Colors.black),
      textAlign: TextAlign.left,
    );

    var container = Container(
      margin: edgeInsets,
      child: tittleDescription,
    );

    final star = Container(
      margin: const EdgeInsets.only(top: 323.0, right: 3.0),
      child: const Icon(
        Icons.star,
        color: Colors.amber,
      ),
    );

    final starHalf = Container(
      margin: const EdgeInsets.only(top: 323.0, right: 3.0),
      child: const Icon(
        Icons.star_half,
        color: Colors.amber,
      ),
    );

final starBorder = Container(
      margin: const EdgeInsets.only(top: 323.0, right: 3.0),
      child: const Icon(
        Icons.star_border,
        color: Colors.amber,
      ),
    );

    final titleStars = Row(
      children: <Widget>[
        container,
        Row(
          children: [star, star, star, starHalf, starBorder],
        )
      ],
    );

    final textDescription = Container(
      margin: const EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
      child: Text(
        descriptionPlace,
        style: const TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
          color: Colors.black87
        ),
        textAlign: TextAlign.left,
      ),
    );

    return Column(
      children: [
        titleStars,
        textDescription
      ],
    );
  }
}
