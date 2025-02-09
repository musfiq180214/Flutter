import 'package:ecommerce/screens/home_screen.dart';
import 'package:ecommerce/screens/signup_screen.dart';
import 'package:flutter/material.dart';

import 'forgot_screen.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 30),
                  Image.asset("images/free-shipping.png"),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: "Enter Email",
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.person),
                    ),
                  ),
                  SizedBox(height: 30),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: "Enter Password",
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: Icon(Icons.remove_red_eye),
                    ),
                  ),

                  Align(
                    alignment: Alignment.bottomRight,
                    child: TextButton(
                        onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => ForgotScreen(),
                      ));
                    },
                        child: Text(
                            "Forgot Password",
                          style: TextStyle(
                            color: Colors.deepOrange,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                    )),
                  ),

                  SizedBox(height: 30),

                  ElevatedButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
                    },
                    child: Text("Log In"),
                    style: ElevatedButton.styleFrom(
                        minimumSize: Size.fromHeight(55),
                        backgroundColor: Colors.deepOrange,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        )
                    ),
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have an Account? "
                          ,style: TextStyle(
                          color: Colors.black54,
                        ),
                      ),
                      TextButton(onPressed: (){
                        Navigator.push(
                        context,
                          MaterialPageRoute(builder: (context) => SignupScreen(),));
                      }, child: Text("Sign Up"))
                    ],
                  )
                ],
              ),
            )),
      ),
    );
  }
}
