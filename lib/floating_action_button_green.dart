import 'package:flutter/material.dart';

class FloatingActionButtonGreen extends StatefulWidget {

  @override
  _FloatingActionButtonGreenState createState() =>
      _FloatingActionButtonGreenState();
}

class _FloatingActionButtonGreenState extends State<FloatingActionButtonGreen> {
  bool fav = false;

  void onPressedFav() {

    setState(() {
      fav = !fav;
    });
    
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: fav ? Text("Agregado a favoritos") : Text("Eliminado de favoritos"),
      duration: Duration(seconds: 1),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Color.fromARGB(255, 244, 40, 40),
      mini: true,
      tooltip: "Fav",
      onPressed: onPressedFav,
      child: Icon(fav ? Icons.favorite : Icons.favorite_border),
    );
  }
}
