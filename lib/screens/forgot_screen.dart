

import 'package:ecommerce/screens/recovery_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home_screen.dart';
import 'otp_screen.dart';

class ForgotScreen extends StatefulWidget {
  const ForgotScreen({super.key});

  @override
  State<ForgotScreen> createState() => _ForgotScreenState();
}

class _ForgotScreenState extends State<ForgotScreen> {

  bool clrButton  = false;

  TextEditingController emailController = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        // leading: BackButton(),
        foregroundColor: Colors.black,
      ),

      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 15),
              Align(
                alignment: Alignment.center,
                child: Text("Forgot Password",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 50),
              Text("Please enter your email address. You will receive a link to create or set a new password via email",
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                controller: emailController,
                onChanged: (val){
                  if(val !=''){
                    setState(() {
                      clrButton = true;
                    });
                  }
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Email",
                  suffixIcon: InkWell(
                    onTap: (){
                      setState(() {
                        emailController.clear();
                      });
                    },
                      child: Icon(CupertinoIcons.multiply, color: Color(0xFFDB3022),)
                  )

                ),
              ),

              SizedBox(height: 50),

              ElevatedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => RecoveryScreen()));
                },
                style: ElevatedButton.styleFrom(
                    minimumSize: Size.fromHeight(55),
                    backgroundColor: Colors.deepOrange,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    )
                ),
                child: Text("Send Code",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),



              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 20),
                  Text("OR"),
                  TextButton(onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => OtpScreen()));
                  }, child: Text("Verify Using number"))
                ],
              )

            ],
          ),
        ),

      ),
    );
  }
}
