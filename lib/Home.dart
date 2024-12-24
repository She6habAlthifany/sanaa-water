import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:projec_prototyp/ProductDetiles.dart';
import 'package:projec_prototyp/onBoardingPages.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _currentIndex == 0
          ? SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Stack(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.shopping_cart,
                              color: Colors.blue,
                              size: 30,
                            ),
                          ),
                          CircleAvatar(
                            radius: 9,
                            backgroundColor: Colors.purple,
                            child: Text(
                              '3',
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.menu,
                          color: Colors.blue,
                          size: 30,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    // mainAxisAlignment: MainAxisAlignment.end,
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
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.grey,
                            ),
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
                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                              // color: Colors.blue, // لون الإطار
                              // width: 3, // عرض الإطار
                              ),
                          borderRadius:
                              BorderRadius.circular(15), // لتدوير الزوايا
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(
                              14), // لتطبيق التدوير على الصورة
                          child: Image.asset(
                            'images/img_1.png',
                            fit: BoxFit
                                .cover, // لتحديد كيفية ملء الصورة في المساحة
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(Icons.circle,
                              size: 10, color: Colors.grey), // مؤشر دائري
                          SizedBox(width: 5),
                          Icon(Icons.circle, size: 10, color: Colors.grey),
                          SizedBox(width: 5),
                          Icon(Icons.circle, size: 10, color: Colors.blue), //
                          SizedBox(width: 5),
                          Icon(Icons.circle,
                              size: 10,
                              color: Colors.blue), // مؤشر نشط// مؤشر نشط
                        ],
                      ),
                    ],
                  ),
                  Wrap(
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ProductBox(
                          name: 'كرتون ماء صغير',
                          description: ' 20 0.75 لتر -عبوة بلاستيك',
                          price: 1900,
                          image: '800020832.webp'),
                      ProductBox(
                          name: 'كرتون ماء كبير',
                          description: ' 12 0.75 لتر -عبوة بلاستيك',
                          price: 1900,
                          image: '800020832.webp'),
                      // ProductBox(name: 'كرتون ماء كبير', description: ' 12 0.75 لتر -عبوة بلاستيك', price: 1900, image: '800020832.webp'),
                    ],
                  ),
                ],
              ),
            )
          : _currentIndex == 1
              ? Container(
                  height: double.infinity,
                  width: double.infinity,
                  color: Colors.blue,
                )
              : _currentIndex == 2
                  ? onBoarding1()
                  : onBoarding2(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
            print(_currentIndex);
          });
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
    );
  }
}

class ProductBox extends StatelessWidget {
  ProductBox(
      {required this.name,
      required this.description,
      required this.price,
      required this.image});
  final String name;
  final String description;
  final int price;
  final String image;

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
                Text(this.name, style: TextStyle(fontWeight: FontWeight.bold)),
                Text(this.description),
                Text(
                  "Price: " + this.price.toString(),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: IconButton(
                      icon: Icon(
                        Icons.add_circle,
                        color: Colors.blue,
                        size: 40,
                      ),
                      onPressed: () {
                        // Navigate to the new page when "+" is clicked
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProductDetailsPage()),
                        );
                      }
                      ),
                )
              ],
            ),
          ),
        ));
  }
}
