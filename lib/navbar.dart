import 'package:flutter/material.dart';

class Navbar extends StatefulWidget {
  const Navbar({ Key? key }) : super(key: key);

  @override
  _NavbarState createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.white,
          // colorScheme: ColorScheme.light().copyWith(primary: Colors.blueAccent)
          colorScheme: ColorScheme.light().copyWith(primary: Colors.blueAccent,)
        ),
        child:  BottomNavigationBar(items: const [
          BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: ""
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: ""
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: ""
            ),
        ],)
      ),
    );
  }
}