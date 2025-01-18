import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'Home.dart';
import 'ReturnPassWord.dart';
import 'logUp.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            child: Container(
              height: double.infinity,
              // width: 550,
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
                // margin: EdgeInsets.all(15),
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
                        height: 150,
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
                      'سجل دخولك للتمتع بمميزات التطبيق',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.grey[700]),
                    ),

                    Padding(
                      padding:  EdgeInsets.symmetric(
                          horizontal: 15.0, vertical: 5.0),
                      child: Column(children: [
                        Container(
                          height: 50,
                          child:
                          TextFormField(
                            decoration: InputDecoration(
                              labelText: 'Password',
                              border: OutlineInputBorder(),
                              prefixIcon: Icon(Icons.lock),

                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your password';
                              }
                              if (value.length < 6) {
                                return 'Password must be at least 6 characters';
                              }
                              return null;
                            },
                          ),
                          // TextField(
                          //   decoration: InputDecoration(
                          //     hintText: 'رقم الجوال +967',
                          //     filled: true,
                          //     fillColor: Colors.white,
                          //     border: OutlineInputBorder(
                          //       borderRadius: BorderRadius.circular(40),
                          //       // borderSide: BorderSide.none,
                          //     ),
                          //   ),
                          //   textAlign: TextAlign.end,
                          // ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Container(
                          height: 50,
                          child:
                          TextFormField(
                            decoration: InputDecoration(
                              labelText: 'Email',
                              border: OutlineInputBorder(),
                              prefixIcon: Icon(Icons.email),
                            ),
                            keyboardType: TextInputType.emailAddress,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your email';
                              }
                              if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                                return 'Please enter a valid email';
                              }
                              return null;
                            },
                          ),
                        ),
                            //   TextField(
                        //     decoration: InputDecoration(
                        //       hintText: 'كلمة المرور',
                        //       filled: true,
                        //       fillColor: Colors.white,
                        //       border: OutlineInputBorder(
                        //         borderRadius: BorderRadius.circular(40),
                        //         // borderSide: BorderSide.none,
                        //       ),
                        //     ),
                        //     textAlign: TextAlign.end,
                        //   ),
                        // ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => ReturnPassWord()),
                                  );
                                },
                                child: Text(
                                  'نسيت كلمة المرور؟',
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ]),
                    ),
                    // Add to cart button
                    SizedBox(
                      height: 80,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 20),
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
                          onPressed: () {Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Home()));},
                          child: Text(
                            'تسجبل الدخول',
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => logUp()),
                            );
                          },
                          child: Text(
                            'إنشاء حساب',
                            style: TextStyle(
                              color: Colors.blue,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                        Text('ليس لديا حساب ؟',style: TextStyle(fontWeight: FontWeight.bold),),
                      ],
                    ),
                    Text('بالدخول للحساب انت توافق على الشروط',style: TextStyle(fontWeight: FontWeight.bold),)
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
