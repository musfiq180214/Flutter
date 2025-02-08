import 'dart:async';

import 'package:ecommerce/screens/home_screen.dart';
import 'package:ecommerce/screens/onboarding_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3),
    () => Navigator.push(context,
    MaterialPageRoute(
        builder: (context) => OnboardingScreen(),


    )
    )
    );
  }


  @override
  Widget build(BuildContext context) {
    // return const Placeholder();
    return Material(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
            image: AssetImage("images/ball_eye.jpeg"),
            fit: BoxFit.cover,
            opacity: 1,
          )
        ),
        child: Directionality(
          textDirection: TextDirection.ltr,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:
            [
            Icon(
              Icons.shopping_cart,
              size: 200,
              color: Colors.redAccent,
            ),
              Text(
                "DP SHOP",
                style:
                  TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                  )
              )
            ],
          )
        ),
        // children: [
        //   Image.asset("images/ball_eye.jpeg")
        // ],
      ),
    );
  }
}
