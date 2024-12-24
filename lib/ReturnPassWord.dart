import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'logUp.dart';
import 'Home.dart';
import 'logUp.dart';

class ReturnPassWord extends StatelessWidget {
  const ReturnPassWord({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            child: Container(
              height: 640,
              width: 550,
              decoration: BoxDecoration(
                color: Colors.black54.withOpacity(
                  0.8,
                ),
                border: Border.all(
                    // color: Colors.blue, // لون الإطار
                    // width: 3, // عرض الإطار
                    ),
                borderRadius: BorderRadius.circular(15), // لتدوير الزوايا
              ),
              child: ClipRRect(
                borderRadius:
                    BorderRadius.circular(14), // لتطبيق التدوير على الصورة
                child: Opacity(
                  opacity: 0.4,
                  child: Image.asset(
                    'images/backgroundimage.png',
                    fit: BoxFit.cover,// لتحديد كيفية ملء الصورة في المساحة
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'استرجاع كلمة المرور',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                )
              ],
            ),
          ),
          Positioned(
            top: 50,
            bottom: -30,
            left: 5,
            right: 5,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                margin: EdgeInsets.all(20),
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
                        'images/passWord.svg', // Replace with actual image URL
                        height: 150,
                        fit: BoxFit.contain,
                      ),
                    ),
                    Text(
                      'من فضلك',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue),
                    ),
                    // Product size and description
                    Text(
                      'ادخل رقم الجوال المرتبط يحسابك وسنرسل\n رسالة خاصة لك لإعادة تعيين كلمة المرور\nالخاصة بك',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.grey[700]),
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15.0, vertical: 5.0),
                      child: Column(children: [
                        Container(
                          height: 50,
                          child: Row(
                            mainAxisAlignment:
                                MainAxisAlignment.start, // المحاذاة إلى اليمين
                            children: [
                              SvgPicture.asset(
                                'images/flagOfYemen.svg',
                                height: 30, // التحكم في حجم الصورة
                                width: 30,
                              ),
                              SizedBox(width: 10), // مسافة بين الصورة والحقل
                              Expanded(
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: 'رقم الجوال +967',
                                    filled: true,
                                    fillColor: Colors.white,
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(40),
                                      // borderSide: BorderSide.none, // إزالة الإطار
                                    ),
                                  ),
                                  textAlign:
                                      TextAlign.end, // محاذاة النص إلى اليمين
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                      ]),
                    ),
                    // Add to cart button
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 60.0, vertical: 20),
                      child: SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                            padding: EdgeInsets.symmetric(vertical: 12),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Home()));
                          },
                          child: Text(
                            'ارسال',
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                        ),
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


class ReturnPassWord_1 extends StatelessWidget {
  const ReturnPassWord_1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            child: Container(
              height: 640,
              width: 550,
              decoration: BoxDecoration(
                color: Colors.black54.withOpacity(
                  0.8,
                ),
                border: Border.all(
                  // color: Colors.blue, // لون الإطار
                  // width: 3, // عرض الإطار
                ),
                borderRadius: BorderRadius.circular(15), // لتدوير الزوايا
              ),
              child: ClipRRect(
                borderRadius:
                BorderRadius.circular(14), // لتطبيق التدوير على الصورة
                child: Opacity(
                  opacity: 0.4,
                  child: Image.asset(
                    'images/backgroundimage.png',
                    fit: BoxFit.cover,// لتحديد كيفية ملء الصورة في المساحة
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'استرجاع كلمة المرور',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                )
              ],
            ),
          ),
          Positioned(
            top: 50,
            bottom: -30,
            left: 5,
            right: 5,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                margin: EdgeInsets.all(20),
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
                        'images/passWord.svg', // Replace with actual image URL
                        height: 150,
                        fit: BoxFit.contain,
                      ),
                    ),
                    Text(
                      'من فضلك',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue),
                    ),
                    // Product size and description
                    Text(
                      'ادخل رقم الجوال المرتبط يحسابك وسنرسل\n رسالة خاصة لك لإعادة تعيين كلمة المرور\nالخاصة بك',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.grey[700]),
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15.0, vertical: 5.0),
                      child: Column(children: [
                        Container(
                          height: 50,
                          child: Row(
                            mainAxisAlignment:
                            MainAxisAlignment.start, // المحاذاة إلى اليمين
                            children: [
                              SvgPicture.asset(
                                'images/flagOfYemen.svg',
                                height: 30, // التحكم في حجم الصورة
                                width: 30,
                              ),
                              SizedBox(width: 10), // مسافة بين الصورة والحقل
                              Expanded(
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: 'رقم الجوال +967',
                                    filled: true,
                                    fillColor: Colors.white,
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(40),
                                      // borderSide: BorderSide.none, // إزالة الإطار
                                    ),
                                  ),
                                  textAlign:
                                  TextAlign.end, // محاذاة النص إلى اليمين
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                      ]),
                    ),
                    // Add to cart button
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 60.0, vertical: 20),
                      child: SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                            padding: EdgeInsets.symmetric(vertical: 12),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Home()));
                          },
                          child: Text(
                            'ارسال',
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                        ),
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
