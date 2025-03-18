import 'package:flutter/material.dart';
import 'package:shoppingapp/screens/forgetscreen.dart';
import 'package:shoppingapp/screens/signupscreen.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

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
                      labelText: "Enter Email",
                      prefixIcon: Icon(Icons.person,),
                      border: OutlineInputBorder(
                        
                      )
                    ),
                  ),

                    const SizedBox(height: 20,),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: "password",
                      prefixIcon: Icon(Icons.lock,),
                      suffixIcon: Icon(Icons.remove_red_eye),
                      border: OutlineInputBorder(
                        
                      )
                    ),
                  ),

                Align(
                  alignment: Alignment.bottomRight,
                  child:  TextButton(onPressed: (){
                     Navigator.push(context, MaterialPageRoute(builder: (context)=>ForgetScreen()));
                  },
                   child: Text("Forget password",
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                      )),
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
                        // Navigator.push(context, MaterialPageRoute(builder: (context)=>Homescreen()));
                  }, child: const Text("Create Account",
                  style: TextStyle(color: Colors.white,),
                  ),
                  ),
                  const SizedBox(height: 20,),
                  Text("OR"),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have an account?",style: TextStyle(
                        color: Colors.black54,
                        fontSize: 15,
                      ),
                      ),
                      TextButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
                      }, child: Text("Sign UP",
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