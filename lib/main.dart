import 'package:flutter/material.dart';
import 'package:grocery_app/screens/CartScreen.dart';
import 'package:grocery_app/screens/HomeScreen.dart';
import 'package:grocery_app/screens/ItemPg.dart';
import 'package:grocery_app/screens/Splash.dart';



void main(){
  runApp(myAppl());
}

class myAppl extends StatelessWidget {
  const myAppl({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/screens',
      routes: {
        "/screens":(context)=>Splash(),
        "/home":(context)=>HomeScreen(),
        "/itemPg":(context) => ItemPg(),
        "/CartScreen":(context)=>CartScreen(),
      },
    );
  }
}
