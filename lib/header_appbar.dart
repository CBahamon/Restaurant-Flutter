import 'package:flutter/material.dart';
import 'package:travel/card_image_list.dart';
import 'package:travel/description_place.dart';
import 'package:travel/gradient_back.dart';


class HeaderAppbar extends StatelessWidget {
const HeaderAppbar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){

    final header =  Stack(
      children: [
        GradientBack(title: "Bienvenido"),
        CardImageList(),
      ],
    );

    return header;
  }
}