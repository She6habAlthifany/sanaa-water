import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projec_prototyp/viwe/AboutApp.dart';
import 'package:projec_prototyp/viwe/AboutUs.dart';
import 'package:projec_prototyp/viwe/ProductDetiles.dart';
import 'package:projec_prototyp/viwe/onBoardingPages.dart';
import '../controller/home_controller.dart';

class Home extends StatelessWidget {
  final HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'الرئيسية',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        actions: [
          Stack(
            children: [
              IconButton(
                icon: Icon(Icons.shopping_cart, color: Colors.black),
                onPressed: () {
                  // Implement cart functionality
                },
              ),
              Obx(
                    () => Positioned(
                  right: 4,
                  top: 4,
                  child: CircleAvatar(
                    radius: 10,
                    backgroundColor: Colors.red,
                    child: Text(
                      '0', // Replace with a controller value if needed
                      style: TextStyle(fontSize: 12, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: Icon(Icons.menu, color: Colors.black),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blueAccent),
              child: Text(
                'من نحن',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('الرئيسية'),
              onTap: () {
                Get.to(Home());
              },
            ),
            ListTile(
              leading: Icon(Icons.water_drop_rounded),
              title: Text('عن التطبيق'),
              onTap: () {
                Get.to(AboutApp());
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('من نحن'),
              onTap: () {
                Get.to(AboutUs());
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('تسجيل الخروج'),
              onTap: () {
                // Add logout functionality
              },
            ),
          ],
        ),
      ),
      body: Obx(() {
        // Observe currentIndex and return the correct widget
        switch (homeController.currentIndex.value) {
          case 0:
            return SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  SizedBox(height: 30),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        ' Ahmed أهلاً',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                      SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(Icons.location_on, size: 16, color: Colors.grey),
                          SizedBox(width: 4),
                          Text(
                            'اليمن، صنعاء، شارع شمالان',
                            style: TextStyle(fontSize: 18, color: Colors.grey),
                          ),
                        ],
                      ),
                      SizedBox(height: 5),
                      Text(
                        'مياه صنعاء ... أصل النقاء!',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.blue,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ],
                  ),
                  Wrap(
                    children: [
                      ProductBox(
                        name: 'كرتون ماء صغير',
                        description: '20 0.75 لتر - عبوة بلاستيك',
                        price: 1900,
                        image: '800020832.webp',
                      ),
                      ProductBox(
                        name: 'كرتون ماء كبير',
                        description: '12 0.75 لتر - عبوة بلاستيك',
                        price: 1900,
                        image: '800020832.webp',
                      ),
                    ],
                  ),
                ],
              ),
            );
          case 1:
            return Container(color: Colors.blue);
          case 2:
            return OnBoarding1();
          default:
            return SizedBox();
        }
      }),
      bottomNavigationBar: Obx(
            () => BottomNavigationBar(
          currentIndex: homeController.currentIndex.value,
          onTap: (index) {
            homeController.changeIndex(index);
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'حسابي',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.map_sharp),
              label: 'عناويني',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.lock_clock),
              label: 'طلباتي',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'الرئيسية',
            ),
          ],
          type: BottomNavigationBarType.fixed,
        ),
      ),
    );
  }
}

class ProductBox extends StatelessWidget {
  ProductBox({
    required this.name,
    required this.description,
    required this.price,
    required this.image,
  });

  final String name;
  final String description;
  final int price;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2),
      width: 180,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Image.asset("images/$image"),
              Text(name, style: TextStyle(fontWeight: FontWeight.bold)),
              Text(description),
              Text("Price: $price"),
              Align(
                alignment: Alignment.centerRight,
                child: IconButton(
                  icon: Icon(Icons.add_circle, color: Colors.blue, size: 40),
                  onPressed: () {
                    Get.to(ProductDetailsPage());
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
