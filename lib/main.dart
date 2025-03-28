import 'package:flutter/material.dart';
import 'package:shoppingapp/screens/navigation_screen.dart';
import 'package:shoppingapp/screens/signupscreen.dart';


main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: "Ecommerce Shopping",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.red
      ),
      home: NavigationScreen(),
    );
  }
}