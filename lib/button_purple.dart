import 'package:flutter/material.dart';

class ButtonPurple extends StatelessWidget {

  String title_button;

  ButtonPurple({required this.title_button});

  @override
  Widget build(BuildContext context) {
    final button = InkWell(
      onTap: (){
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Navegando"),));
      },
      child: Container(
        
        height: 50.0,
        width: 180.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            gradient: const LinearGradient(
                colors: [
                  Color.fromRGBO(32, 38, 57, 1),
                  Color.fromRGBO(63, 76, 119, 1),
                ],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                // stops: [0.0, 0.5, 0.95, 1.0],
                tileMode: TileMode.clamp)),
        child: Center(
            child: Text(title_button,
                style:const TextStyle(
                    fontSize: 18.0, fontFamily: "Lato", color: Colors.white))),
      ),
    );

    final buttonFinal = Container(
      margin: const EdgeInsets.only(top: 30.0, left: 20.0, right: 20.0,bottom: 20.0),
      child: button,
    );

    return buttonFinal;
  }
}
