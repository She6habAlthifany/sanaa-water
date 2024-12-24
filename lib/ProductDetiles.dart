import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:projec_prototyp/Home.dart';
import 'package:projec_prototyp/Splash.dart';

class ProductDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200], // Background color
       appBar:
        AppBar(
        elevation: 0, // Remove shadow
        backgroundColor: Colors.white, // Match the white background
        title: Center(
          child: Text(
            'تفاصيل',
            style: TextStyle(color: Colors.blue, fontSize: 18), // Text color and size
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.menu, color: Colors.blue),
            onPressed: () {

            },
          ),
        ],
        leading: IconButton(
          icon: Icon(Icons.arrow_forward, color: Colors.blue),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Home())); // Action for back button
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          elevation: 4,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Product image
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Image.asset(
                  'images/800020832.webp', // Replace with actual image URL
                  height: 150,
                  fit: BoxFit.contain,
                ),
              ),
              // Product title
              Text(
                'كرتون ماء كبير',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blue),
              ),
              // Product size and description
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  '1.5 لتر - 12 عبوة بلاستيكية\nمياه معدنية مصنوعة من الآبار والجبال, وهي تحتوي على\nأملاح معدنية يختلف تركيبها بحسب طبقات الأرضية التحتية.',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.grey[700]),
                ),
              ),
              // Price details
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'ريال 1.700',
                      style: TextStyle(fontSize: 16, color: Colors.grey[600], decoration: TextDecoration.lineThrough),
                    ),
                    Text(
                      'ريال 5.100',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blue),
                    ),
                  ],
                ),
              ),
              // Quantity control
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: Icon(Icons.remove_circle, color: Colors.blue),
                      onPressed: () {},
                    ),
                    Text(
                      '3',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    IconButton(
                      icon: Icon(Icons.add_circle, color: Colors.blue),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              // Add to cart button
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: EdgeInsets.symmetric(vertical: 12),
                    ),
                    onPressed: () {},
                    child: Text(
                      'أضف إلى السلة',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
