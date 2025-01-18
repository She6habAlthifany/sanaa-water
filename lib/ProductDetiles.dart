import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:projec_prototyp/Home.dart';
import 'package:projec_prototyp/Splash.dart';
import 'package:flutter/material.dart';

// void main() {
//   runApp(WaterShopApp());
// }
//
// class WaterShopApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: WaterDetailsPage(),
//     );
//   }
// }

class ProductDetailsPage extends StatefulWidget {
  @override
  _ProductDetailsPageState createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends State<ProductDetailsPage> {
  int itemCount = 3; // Initial quantity
  double itemPrice = 1.7; // Price per item
  int cartItemCount = 0; // Number of items in the cart

  void _addToCart() {
    setState(() {
      cartItemCount += itemCount; // Add current quantity to cart
    });
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('$itemCount عناصر أُضيفت إلى السلة')),
    );
  }

  void _viewCart() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('تم فتح السلة. يوجد $cartItemCount عناصر.')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        // elevation: 1,
        title: const Text(
          'تفاصيل',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        actions: [
          Stack(
            children: [
              IconButton(
                icon: Icon(Icons.shopping_cart, color: Colors.black),
                onPressed: _viewCart,
              ),
              if (cartItemCount > 0)
                Positioned(
                  right: 4,
                  top: 4,
                  child: CircleAvatar(
                    radius: 10,
                    backgroundColor: Colors.red,
                    child: Text(
                      '$cartItemCount',
                      style: TextStyle(fontSize: 12, color: Colors.white),
                    ),
                  ),
                ),
            ],
          ),

        ],
        leading:
            IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.black),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Home())
                );
              },
            ),




      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Image.asset(
                      'images/800020832.webp', // Replace with your image asset
                      height: 120,
                    ),
                    SizedBox(height: 16),
                    Text(
                      'كرتون ماء كبير',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueAccent,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      '1.5 لتر - 12 عبوة بلاستيكية\nمياه معدنية مصنوعة من الآبار والجبال، وهي تحتوي على أملاح معدنية تختلف تركيبتها حسب طبقات الأرضية.',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 14, color: Colors.grey[700]),
                    ),
                    SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'ريال ${(itemCount * itemPrice).toStringAsFixed(2)}',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.blueAccent,
                          ),
                        ),
                        Text(
                          'ريال $itemPrice',
                          style: TextStyle(
                            fontSize: 14,
                            decoration: TextDecoration.lineThrough,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          icon: Icon(Icons.remove_circle_outline),
                          color: Colors.blueAccent,
                          onPressed: () {
                            setState(() {
                              if (itemCount > 1) itemCount--;
                            });
                          },
                        ),
                        Text(
                          '$itemCount',
                          style: TextStyle(fontSize: 18),
                        ),
                        IconButton(
                          icon: Icon(Icons.add_circle_outline),
                          color: Colors.blueAccent,
                          onPressed: () {
                            setState(() {
                              itemCount++;
                            });
                          },
                        ),
                      ],
                    ),
                    SizedBox(height: 16),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: _addToCart,
                        child: Text('أضف إلى السلة'),
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(vertical: 16),
                          backgroundColor: Colors.blueAccent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}




//
// class ProductDetailsPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey[200], // Background color
//        appBar:
//         AppBar(
//         elevation: 0, // Remove shadow
//         backgroundColor: Colors.white, // Match the white background
//         title: Center(
//           child: Text(
//             'تفاصيل',
//             style: TextStyle(color: Colors.blue, fontSize: 18), // Text color and size
//           ),
//         ),
//         actions: [
//           IconButton(
//             icon: Icon(Icons.menu, color: Colors.blue),
//             onPressed: () {
//
//             },
//           ),
//         ],
//         leading: IconButton(
//           icon: Icon(Icons.arrow_forward, color: Colors.blue),
//           onPressed: () {
//             Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                     builder: (context) => Home())); // Action for back button
//           },
//         ),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Card(
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(15.0),
//           ),
//           elevation: 4,
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               // Product image
//               Padding(
//                 padding: const EdgeInsets.all(16.0),
//                 child: Image.asset(
//                   'images/800020832.webp', // Replace with actual image URL
//                   height: 150,
//                   fit: BoxFit.contain,
//                 ),
//               ),
//               // Product title
//               Text(
//                 'كرتون ماء كبير',
//                 style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blue),
//               ),
//               // Product size and description
//               Padding(
//                 padding: const EdgeInsets.symmetric(vertical: 8.0),
//                 child: Text(
//                   '1.5 لتر - 12 عبوة بلاستيكية\nمياه معدنية مصنوعة من الآبار والجبال, وهي تحتوي على\nأملاح معدنية يختلف تركيبها بحسب طبقات الأرضية التحتية.',
//                   textAlign: TextAlign.center,
//                   style: TextStyle(color: Colors.grey[700]),
//                 ),
//               ),
//               // Price details
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 16.0),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text(
//                       'ريال 1.700',
//                       style: TextStyle(fontSize: 16, color: Colors.grey[600], decoration: TextDecoration.lineThrough),
//                     ),
//                     Text(
//                       'ريال 5.100',
//                       style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blue),
//                     ),
//                   ],
//                 ),
//               ),
//               // Quantity control
//               Padding(
//                 padding: const EdgeInsets.all(16.0),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     IconButton(
//                       icon: Icon(Icons.remove_circle, color: Colors.blue),
//                       onPressed: () {},
//                     ),
//                     Text(
//                       '3',
//                       style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//                     ),
//                     IconButton(
//                       icon: Icon(Icons.add_circle, color: Colors.blue),
//                       onPressed: () {},
//                     ),
//                   ],
//                 ),
//               ),
//               // Add to cart button
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 16.0),
//                 child: SizedBox(
//                   width: double.infinity,
//                   child: ElevatedButton(
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: Colors.blue,
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(10),
//                       ),
//                       padding: EdgeInsets.symmetric(vertical: 12),
//                     ),
//                     onPressed: () {},
//                     child: Text(
//                       'أضف إلى السلة',
//                       style: TextStyle(fontSize: 18, color: Colors.white),
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
//
//
//
