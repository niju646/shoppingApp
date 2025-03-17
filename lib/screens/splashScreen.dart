import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shoppingapp/screens/homeScreen.dart';
import 'package:shoppingapp/screens/onborading_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds:3 ),
    ()=>Navigator.push(context,MaterialPageRoute(builder:(context)=>
      OnboradingScreen(),
     ))
    );
  }


  @override
  Widget build(BuildContext context) {
    return  Material(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.black,
            image: DecorationImage(
              image:AssetImage("assets/image1.jpg"),
              fit: BoxFit.cover,
              opacity: 0.4,
               )
        ),
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.shopping_cart,
            color: Color.fromARGB(255, 207, 29, 29),
            size: 200,
            ),
            Text("DP SHOP",
            style: TextStyle(
              color: Colors.white,
              fontSize: 45,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
            )
            ,)
          ],
        ) ,
      ),
    );
  }
}