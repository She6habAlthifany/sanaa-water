import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:projec_prototyp/viwe/Home.dart';
import 'package:projec_prototyp/viwe/dash.dart';
import 'package:projec_prototyp/viwe/Splash.dart';
import 'package:projec_prototyp/viwe/onBoardingPages.dart';
import 'package:projec_prototyp/viwe/Home.dart';
import 'package:projec_prototyp/viwe/ProductDetiles.dart';
import 'package:projec_prototyp/viwe/Login.dart';

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
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Sana'a Water Shop",
      theme: ThemeData( ),

      // color: Color(0xff0F126B),
      home:Scaffold(
        // body: login(),
             body: SanaaWater(),
      ),
      getPages: [
        GetPage(name: '/Home', page:() => Home())
      ],


      );
  }
}
