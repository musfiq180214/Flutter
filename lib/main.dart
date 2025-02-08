import 'package:ecommerce/screens/login_screen.dart';
import 'package:ecommerce/screens/splash_screen.dart';
import 'package:flutter/material.dart';


void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Ecommerce Shopping",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blueAccent,
      ),
      home: LoginScreen(),
      // home: SplashScreen(),
    );
    // return Material(
    //   child: Container(
    //     height: MediaQuery.of(context).size.height,
    //     width: MediaQuery.of(context).size.width,
    //     decoration: BoxDecoration(
    //       color: Colors.black,
    //       image: DecorationImage(
    //         image: AssetImage("images/ball_eye.jpeg"),
    //         fit: BoxFit.cover,
    //         opacity: 1,
    //       )
    //     ),
    //     child: Directionality(
    //       textDirection: TextDirection.ltr,
    //       child: Column(
    //         mainAxisAlignment: MainAxisAlignment.center,
    //         children:
    //         [
    //         Icon(
    //           Icons.shopping_cart,
    //           size: 200,
    //           color: Colors.redAccent,
    //         ),
    //           Text(
    //             "DP SHOP",
    //             style:
    //               TextStyle(
    //                 color: Colors.white,
    //                 fontSize: 30,
    //                 fontWeight: FontWeight.bold,
    //                 fontStyle: FontStyle.italic,
    //               )
    //           )
    //         ],
    //       )
    //     ),
    //     // children: [
    //     //   Image.asset("images/ball_eye.jpeg")
    //     // ],
    //   ),
    // );
  }
}