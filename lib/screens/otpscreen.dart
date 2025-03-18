import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shoppingapp/screens/otp_verify_screen.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({super.key});

  @override
  Widget build(BuildContext context) {

      Widget spaceh = const SizedBox(height: 20,);



    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.symmetric(horizontal: 25,),
        child: Column(
          children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text("Forget Password ",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),),
                ),
                const SizedBox(height: 50,),
                Text("Please enter your number. You will receive a OTP to create or set a new password via number"),
                spaceh,
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Enter Number",
                    border: OutlineInputBorder(

                    )
                  ),
                ),
                spaceh,
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    minimumSize:Size.fromHeight(55),
                      shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ), 
                  ),
                  onPressed: 
                (){
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>OtpVerifyScreen()));
                }, 
                child: Text("Send Code",style: TextStyle(
                  color: Colors.white
                ),))
          ],
        )
        ),
      ),
    );
  }
}