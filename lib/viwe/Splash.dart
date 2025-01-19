import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:projec_prototyp/viwe/onBoardingPages.dart';

import '../controller/product_detiles_controller.dart';

class SanaaWater extends StatelessWidget {
  // ProductDetailsController controller = Get.put(ProductDetailsController(), permanent: true);

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
            child: SvgPicture.asset('images/image.svg',fit: BoxFit.fill,),
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
                MaterialPageRoute(builder: (context) => OnBoarding1()),
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
