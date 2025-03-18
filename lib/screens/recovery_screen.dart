import 'package:flutter/material.dart';

class RecoveryScreen extends StatelessWidget {
  const RecoveryScreen({super.key});

  @override
  Widget build(BuildContext context) {

Widget spaceh = const SizedBox(height: 20,);

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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              Text(
                "Forget Password",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 60),
             spaceh,
             
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Reset Code",
                  
                  border: OutlineInputBorder(),
                ),
              ),
spaceh,
               TextFormField(
                decoration: InputDecoration(
                  labelText: "New Password",
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: Icon(Icons.remove_red_eye),
                  border: OutlineInputBorder(),
                ),
              ),
spaceh,
               TextFormField(
                decoration: InputDecoration(
                  labelText: "Reset Code",
                   prefixIcon: Icon(Icons.lock),
                  suffixIcon: Icon(Icons.remove_red_eye),
                  border: OutlineInputBorder(),
                ),
              ),


spaceh,
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  minimumSize:Size.fromHeight(55),
                      shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              )
                ),
                onPressed: (){},
               child: Text("Reset Password",
               style: TextStyle(color: Colors.white),))
            ],
          ),
        ),
      ),
    );
  }
}