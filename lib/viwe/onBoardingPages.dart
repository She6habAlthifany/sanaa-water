import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:projec_prototyp/viwe/Home.dart';

class OnBoarding1 extends StatefulWidget {
  @override
  _OnBoarding1State createState() => _OnBoarding1State();
}

class _OnBoarding1State extends State<OnBoarding1> {
  int _selectedIndex = 0; // Keeps track of the selected icon index
  final List<String> _texts = [
    'النص الأول: هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ',
    'النص الثاني: هذا النص هو مثال آخر على تغيير النصوص بشكل ديناميكي',
    'النص الثالث: نص نهائي يوضح التنقل بين النصوص',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Image.asset(
              'images/pngtree-blue-water-background-mesmerizing-abstract-bubbles-image_13730627.png',
              fit: BoxFit.cover,
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.65,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: SvgPicture.asset(
              'images/sanaa2.svg',
              fit: BoxFit.cover,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text(
                      _texts[_selectedIndex], // Display the current text
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.circle,
                        size: 10,
                        color: _selectedIndex == 0 ? Colors.blue : Colors.grey,
                      ),
                      SizedBox(width: 5),
                      Icon(
                        Icons.circle,
                        size: 10,
                        color: _selectedIndex == 1 ? Colors.blue : Colors.grey,
                      ),
                      SizedBox(width: 5),
                      Icon(
                        Icons.circle,
                        size: 10,
                        color: _selectedIndex == 2 ? Colors.blue : Colors.grey,
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  IconButton(
                    icon: Icon(Icons.arrow_forward, color: Colors.blue),
                    onPressed: () {
                      if (_selectedIndex < _texts.length - 1) {
                        // If not the last text, go to the next one
                        setState(() {
                          _selectedIndex++;
                        });
                      } else {
                        // If it's the last text, navigate to the next page
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Home(), // Replace with your next page
                          ),
                        );
                      }
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

// class OnBoarding2 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Stack(
//         children: [
//           Image.asset(
//             'images/pngtree-blue-water-background-mesmerizing-abstract-bubbles-image_13730627.png',
//             fit: BoxFit.cover,
//             width: double.infinity,
//             height: double.infinity,
//           ),
//           Align(
//             alignment: Alignment.center,
//             child: SvgPicture.asset(
//               'images/sanaa2.svg',
//               fit: BoxFit.cover,
//             ),
//           ),
//           Align(
//             alignment: Alignment.bottomCenter,
//             child: Padding(
//               padding: const EdgeInsets.only(bottom: 20.0),
//               child: Column(
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   Text(
//                     'النص',
//                     style: TextStyle(
//                       fontWeight: FontWeight.bold,
//                       color: Color(0xff1FBBE3),
//                       fontSize: 26.0,
//                     ),
//                   ),
//                   SizedBox(height: 15),
//                   Text(
//                     'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ',
//                     textAlign: TextAlign.center,
//                     style: TextStyle(fontSize: 16, color: Colors.grey[700]),
//                   ),
//                   SizedBox(height: 20),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: const [
//                       Icon(Icons.circle, size: 10, color: Colors.grey),
//                       SizedBox(width: 5),
//                       Icon(Icons.circle, size: 10, color: Colors.blue),
//                       SizedBox(width: 5),
//                       Icon(Icons.circle, size: 10, color: Colors.grey),
//                     ],
//                   ),
//                   SizedBox(height: 20),
//                   IconButton(
//                     icon: Icon(Icons.arrow_forward, color: Colors.blue),
//                     onPressed: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(builder: (context) => OnBoarding3()),
//                       );
//                     },
//                     iconSize: 30,
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
//
// class OnBoarding3 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Stack(
//         children: [
//           Image.asset(
//             'images/pngtree-blue-water-background-mesmerizing-abstract-bubbles-image_13730627.png',
//             fit: BoxFit.cover,
//             width: double.infinity,
//             height: double.infinity,
//           ),
//           Align(
//             alignment: Alignment.center,
//             child: SvgPicture.asset(
//               'images/sanaa2.svg',
//               fit: BoxFit.cover,
//             ),
//           ),
//           Align(
//             alignment: Alignment.bottomCenter,
//             child: Padding(
//               padding: const EdgeInsets.only(bottom: 20.0),
//               child: Column(
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   Text(
//                     'النص',
//                     style: TextStyle(
//                       fontWeight: FontWeight.bold,
//                       color: Color(0xff1FBBE3),
//                       fontSize: 26.0,
//                     ),
//                   ),
//                   SizedBox(height: 15),
//                   Text(
//                     'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ',
//                     textAlign: TextAlign.center,
//                     style: TextStyle(fontSize: 16, color: Colors.grey[700]),
//                   ),
//                   SizedBox(height: 20),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: const [
//                       Icon(Icons.circle, size: 10, color: Colors.grey),
//                       SizedBox(width: 5),
//                       Icon(Icons.circle, size: 10, color: Colors.grey),
//                       SizedBox(width: 5),
//                       Icon(Icons.circle, size: 10, color: Colors.blue),
//                     ],
//                   ),
//                   SizedBox(height: 20),
//                   Container(
//                     width: 300.0,
//                     height: 50.0,
//                     decoration: BoxDecoration(
//                       color: Colors.blue,
//                       borderRadius: BorderRadius.circular(25.0),
//                     ),
//                     child: TextButton(
//                       onPressed: () => Navigator.push(
//                         context,
//                         MaterialPageRoute(builder: (context) => Home()),
//                       ),
//                       child: Text(
//                         'البداء بالتسوق',
//                         style: TextStyle(
//                           fontWeight: FontWeight.bold,
//                           color: Colors.white,
//                           fontSize: 20,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class Home extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(child: Text('Home Page')),
//     );
//   }
// }
