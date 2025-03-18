import 'package:flutter/material.dart';
import 'package:shoppingapp/screens/homeScreen.dart';
import 'package:shoppingapp/screens/login_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: SafeArea(child: 
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //SizedBox(height: 110,),
            Image.asset("assets/freed.jpeg",),
            SizedBox(height: 50,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                children: [
                  const SizedBox(height: 20,),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: "Enter Name",
                      prefixIcon: Icon(Icons.person,),
                      border: OutlineInputBorder(
                        
                      )
                    ),
                  ),

                   const SizedBox(height: 20,),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: "Enter Email",
                      prefixIcon: Icon(Icons.email,),
                      border: OutlineInputBorder(
                        
                      )
                    ),
                  ),

                    const SizedBox(height: 20,),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: "Enter Number",
                      prefixIcon: Icon(Icons.numbers,),
                      suffixIcon: Icon(Icons.remove_red_eye),
                      border: OutlineInputBorder(
                        
                      )
                    ),
                  ),

                    const SizedBox(height: 20,),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: " Enter password",
                      prefixIcon: Icon(Icons.lock,),
                      suffixIcon: Icon(Icons.remove_red_eye),
                      border: OutlineInputBorder(
                        
                      )
                    ),
                  ),

                    const SizedBox(height: 20,),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: "Confirm password",
                      prefixIcon: Icon(Icons.lock,),
                      suffixIcon: Icon(Icons.remove_red_eye),
                      border: OutlineInputBorder(
                        
                      )
                    ),
                  ),

                

                const SizedBox(height: 40,),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      minimumSize:Size.fromHeight(55),
                      shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              )
                    ),
                    onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Homescreen()));
                  }, child: const Text("Create Account",
                  style: TextStyle(color: Colors.white,),
                  ),
                  ),
                  const SizedBox(height: 20,),
                  Text("OR"),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Already have an account?",style: TextStyle(
                        color: Colors.black54,
                        fontSize: 15,
                      ),
                      ),
                      TextButton(onPressed: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context)=>SignupScreen()));
                      }, child: Text("Login",
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                      ))
                    ],
                  )

                ],
              ),
            )
          ],
        )
        ),
      ),
    );
  }
}