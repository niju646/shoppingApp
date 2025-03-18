import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shoppingapp/screens/otpscreen.dart';
import 'package:shoppingapp/screens/recovery_screen.dart';

class ForgetScreen extends StatefulWidget {
  const ForgetScreen({super.key});

  @override
  State<ForgetScreen> createState() => _ForgetScreenState();
}

class _ForgetScreenState extends State<ForgetScreen> {
  bool clrButton = false;
  TextEditingController _controller = TextEditingController();
  Widget spaceh = const SizedBox(height: 10,);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
           // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              Text(
                "Forget Password",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 60),
              Text(
                "Please enter the email address. You will receive a link to create or set a new password via email",
              ),
              SizedBox(height: 20),
              TextFormField(
                controller: _controller,
                onChanged: (val) {
                  setState(() {
                    clrButton = val.isNotEmpty;
                  });
                },
                decoration: InputDecoration(
                  labelText: "Email",
                  suffixIcon: clrButton
                      ? IconButton(
                          onPressed: () {
                            setState(() {
                              _controller.clear();
                              
                              clrButton = false;
                            });
                          },
                          icon: Icon(CupertinoIcons.multiply, color: Colors.red),
                        )
                      : null,
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20,),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  minimumSize:Size.fromHeight(55),
                      shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              )
                ),
                onPressed: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>RecoveryScreen()));
                },
               child: Text("Send Code",
               style: TextStyle(color: Colors.white),)),
               spaceh,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("OR"),
                          
                      TextButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>OTPScreen()));
                      }, child: Text("Verify using Number",
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                      ))
                        ],
                      ),
                      spaceh,
                
            ],
          ),
        ),
      ),
    );
  }
}
