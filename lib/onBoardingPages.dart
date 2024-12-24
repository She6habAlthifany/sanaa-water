import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:projec_prototyp/Home.dart';
import 'package:projec_prototyp/Splash.dart';
class onBoarding1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            // top:0,
            // left: 0,
            // right: 0,
            bottom: 50.0,
            child: Image.asset(
              'images/pngtree-blue-water-background-mesmerizing-abstract-bubbles-image_13730627.png',
              width: 750,
              height: 850.0,
            ),
          ),
          Positioned(
              top: 0,
              left: 0,
              right: 0,
              bottom: 50.0,
              child: SvgPicture.asset('images/sanaa2.svg')),
          Positioned(
            top: 350,
            left: 0,
            right: 0,
            bottom: 50.0,
            child: Center(
              child: Text(
                'النص',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xff1FBBE3),
                    fontSize: 26.0),
              ),
            ),
          ),
          Positioned(
            top: 500,
            left: 0,
            right: 0,
            child: Container(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Text(
                  //   'النص',
                  //   style: TextStyle(
                  //     fontSize: 20,
                  //     fontWeight: FontWeight.bold,
                  //   ),
                  // ),
                  SizedBox(height: 15), // مسافة بين النص والمحتوى السفلي
                  Text(
                    'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16, color: Colors.grey[700]),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.circle,
                          size: 10, color: Colors.blue), // مؤشر دائري
                      SizedBox(width: 5),
                      Icon(Icons.circle, size: 10, color: Colors.grey),
                      SizedBox(width: 5),
                      Icon(Icons.circle,
                          size: 10, color: Colors.grey), // مؤشر نشط
                    ],
                  ),
                  SizedBox(height: 20),
                  IconButton(
                    icon: Icon(Icons.arrow_forward, color: Colors.blue),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => onBoarding2())); // Action for back button
                    },
                    iconSize: 30,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class onBoarding2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            // top:0,
            // left: 0,
            // right: 0,
            bottom: 50.0,
            child: Image.asset(
              'images/pngtree-blue-water-background-mesmerizing-abstract-bubbles-image_13730627.png',
              width: 750,
              height: 850.0,
            ),
          ),
          Positioned(
              top: 0,
              left: 0,
              right: 0,
              bottom: 50.0,
              child: SvgPicture.asset('images/sanaa2.svg')),
          Positioned(
            top: 350,
            left: 0,
            right: 0,
            bottom: 50.0,
            child: Center(
              child: Text(
                'النص',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xff1FBBE3),
                    fontSize: 26.0),
              ),
            ),
          ),
          Positioned(
            top: 500,
            left: 0,
            right: 0,
            child: Container(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Text(
                  //   'النص',
                  //   style: TextStyle(
                  //     fontSize: 20,
                  //     fontWeight: FontWeight.bold,
                  //   ),
                  // ),
                  SizedBox(height: 15), // مسافة بين النص والمحتوى السفلي
                  Text(
                    'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16, color: Colors.grey[700]),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.circle,
                          size: 10, color: Colors.grey), // مؤشر دائري
                      SizedBox(width: 5),
                      Icon(Icons.circle, size: 10, color: Colors.blue),
                      SizedBox(width: 5),
                      Icon(Icons.circle,
                          size: 10, color: Colors.grey), // مؤشر نشط
                    ],
                  ),
                  SizedBox(height: 20),
                  IconButton(
                    icon: Icon(Icons.arrow_forward, color: Colors.blue),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => onBoarding3())); // Action for back button
                    },
                    iconSize: 30,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class onBoarding3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            // top:0,
            // left: 0,
            // right: 0,
            bottom: 50.0,
            child: Image.asset(
              'images/pngtree-blue-water-background-mesmerizing-abstract-bubbles-image_13730627.png',
              width: 750,
              height: 850.0,
            ),
          ),
          Positioned(
              top: 0,
              left: 0,
              right: 0,
              bottom: 50.0,
              child: SvgPicture.asset('images/sanaa2.svg')),
          Positioned(
            top: 350,
            left: 0,
            right: 0,
            bottom: 50.0,
            child: Center(
              child: Text(
                'النص',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xff1FBBE3),
                    fontSize: 26.0),
              ),
            ),
          ),
          Positioned(
            top: 500,
            left: 0,
            right: 0,
            child: Container(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Text(
                  //   'النص',
                  //   style: TextStyle(
                  //     fontSize: 20,
                  //     fontWeight: FontWeight.bold,
                  //   ),
                  // ),
                  SizedBox(height: 15), // مسافة بين النص والمحتوى السفلي
                  Text(
                    'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16, color: Colors.grey[700]),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.circle,
                          size: 10, color: Colors.grey), // مؤشر دائري
                      SizedBox(width: 5),
                      Icon(Icons.circle, size: 10, color: Colors.grey),
                      SizedBox(width: 5),
                      Icon(Icons.circle,
                          size: 10, color: Colors.blue), // مؤشر نشط
                    ],
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: 300.0,
                    height: 50.0,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(25.0)),
                    child: ListTile(
                      title: Center(
                        child: Text(
                          'البداء بالتسوق',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 20),
                        ),
                      ),
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Home()),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
