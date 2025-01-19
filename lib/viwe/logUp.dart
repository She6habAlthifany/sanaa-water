import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:projec_prototyp/viwe/Login.dart';

import 'Home.dart';

class logUp extends StatelessWidget {
  const logUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            child: Container(
              height: 600,
              width: 550,
              decoration: BoxDecoration(
                border: Border.all(
                  // color: Colors.blue, // لون الإطار
                  // width: 3, // عرض الإطار
                ),
                borderRadius: BorderRadius.circular(15), // لتدوير الزوايا
              ),
              child: ClipRRect(
                borderRadius:
                BorderRadius.circular(14), // لتطبيق التدوير على الصورة
                child: Image.asset(
                  'images/pngtree-blue-water-background-mesmerizing-abstract-bubbles-image_13730627.png',
                  fit: BoxFit.cover, // لتحديد كيفية ملء الصورة في المساحة
                ),
              ),
            ),
          ),
          Positioned(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Card(
                margin: EdgeInsets.all(15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                elevation: 4,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Product image
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: SvgPicture.asset(
                        'images/image.svg', // Replace with actual image URL
                        height: 120,
                        fit: BoxFit.contain,
                      ),
                    ),
                    // Product title
                    Text(
                      'من فضلك',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue),
                    ),
                    // Product size and description
                    Text(
                      'املأ البيانات بطريقة صحيحة لإنشاء حساب جديد',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.grey[700]),
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15.0, vertical: 5.0),
                      child: Column(children: [
                        Container(
                          height: 50,
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'الأسم',
                              filled: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40),
                                // borderSide: BorderSide.none,
                              ),
                            ),
                            textAlign: TextAlign.end,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Container(
                          height: 50,
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'رقم الجوال +967',
                              filled: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40),
                                // borderSide: BorderSide.none,
                              ),
                            ),
                            textAlign: TextAlign.end,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Container(
                          height: 50,
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'كلمة المرور',
                              filled: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40),
                                // borderSide: BorderSide.none,
                              ),
                            ),
                            textAlign: TextAlign.end,
                          ),
                        ), SizedBox(
                          height: 8,
                        ),
                        Container(
                          height: 50,
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'تأكيد كلمة المرور',
                              filled: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40),
                                // borderSide: BorderSide.none,
                              ),
                            ),
                            textAlign: TextAlign.end,
                          ),
                        ),
                        SizedBox(height: 5,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'اوافق على الشروط والأحكام',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                 ),
                            ),
                          ],
                        ),
                      ]),
                    ),
                    // Add to cart button
                    SizedBox(
                      height: 50,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20.0,),
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
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Home()));},
                          child: Text(
                            'انشاء حساب',
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => login()),
                              );
                            },
                            child: Text(
                              'تسجيل الدخول',
                              style: TextStyle(
                                color: Colors.blue,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                          Text('لديا حساب سابقاً؟ ',style: TextStyle(fontWeight: FontWeight.bold),),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class SearchWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: TextField(
        decoration: InputDecoration(
          hintText: 'رقم الجوال +967',
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(40),
            // borderSide: BorderSide.none,
          ),
        ),
        textAlign: TextAlign.end,
      ),
    );
  }
}
