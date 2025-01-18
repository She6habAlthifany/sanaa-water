import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:projec_prototyp/Home.dart';
import 'package:projec_prototyp/dash.dart';
import 'package:projec_prototyp/Splash.dart';
import 'package:projec_prototyp/onBoardingPages.dart';
import 'package:projec_prototyp/Home.dart';
import 'package:projec_prototyp/ProductDetiles.dart';
import 'package:projec_prototyp/Login.dart';
void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.dark,
      statusBarIconBrightness: Brightness.light
    )
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Sana'a Water Shop",
      theme: ThemeData( ),

      // color: Color(0xff0F126B),
      home:Scaffold(
        // body: login(),
             body: SanaaWater(),
      ),


      );
  }
}
