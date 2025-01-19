import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projec_prototyp/viwe/Home.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:projec_prototyp/controller/product_detiles_controller.dart';

class AboutApp extends StatelessWidget {
  ProductDetailsController productDetailsController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        centerTitle: true,
        title: Text(
          'عن التطبيق',
          style: TextStyle(
            color: Colors.blue,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new, color: Colors.black),
          onPressed: () {
            // ضع هنا الإجراء المناسب عند الضغط على زر الرجوع
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Home(), // Replace with your next page
              ),
            );
          },
        ),
        actions: [
          Stack(
            children: [
              IconButton(
                icon: Icon(Icons.shopping_cart, color: Colors.black),
                onPressed: () {
                  // ضع هنا الإجراء المناسب لفتح السلة
                },
              ),
              Positioned(
                right: 4,
                top: 4,
                child: CircleAvatar(
                  radius: 10,
                  backgroundColor: Colors.red,
                  child: Obx(
    () => Text(
                      productDetailsController.cartItemCount.value.toString(),// عدد العناصر في السلة
                      style: TextStyle(fontSize: 12, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SvgPicture.asset('images/image.svg',),
            ),
            SizedBox(height: 15),
            Text('تطبيق مياه صنعاء',
              style: TextStyle(
                fontSize: 22,
                height: 1.8,
                color: Colors.grey[800],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child:Text(' اطلقنا التطبيق في السوق اليمني لكي يسهل\n للعميل خدمة حجز منتجاتنا دون اي تعب او مشقة\n هدف التطبيق نيل رضا العملاء وكسب محبتهم\n كما يوجد توصيل لجميع مناطق العاصمة صنعاء\n مجااااناً',
                style: TextStyle(
                    fontSize: 20,
                    height: 1.8,
                    color: Colors.grey[800],
                  ),
                  textAlign: TextAlign.right,

                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

