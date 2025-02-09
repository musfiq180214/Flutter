

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),

              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Forgot Password ?",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,

                  ),
                ),
              ),

              SizedBox(height: 50),

              Text("Please enter your number to receive OTP ro create or set new password",
              style: TextStyle(
                fontSize: 15,
              ),
              ),
              SizedBox(height: 20),

              SizedBox(height: 20),

              SizedBox(height: 20),

              TextFormField(
                decoration: InputDecoration(
                  labelText: "Enter Number",
                  border: OutlineInputBorder(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
