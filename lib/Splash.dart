import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:projec_prototyp/onBoardingPages.dart';

class SanaaWater extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: -70,
            child: SvgPicture.asset('images/ballwater.svg'),
          ),
          Center(
            child: SvgPicture.asset('images/image.svg'),
          ),
          Positioned(
            bottom: 8,
            right: -80,
            child: SvgPicture.asset('images/ballwater.svg'),
          ),
          Positioned(
            top: 0,
            bottom: 0,
            left: 0,
            right: 0,
            child: ListTile(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => onBoarding1()),
              ),
            ),
          ),
          const Positioned(
            bottom: 10,
            left: 0,
            right: 0,
            child: Center(
              child: Text('Powered by @ Shehab light co'),
            ),
          )
        ],
      ),
    );
  }
}
