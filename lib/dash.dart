import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

  class Dash extends StatefulWidget {
  const Dash({Key? key}) : super(key: key);

  @override
  State<Dash> createState() => _DashState();
}

class _DashState extends State<Dash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff191B5A),
      appBar: AppBar(
        title: const Text('DASHBOARD'),
        backgroundColor: Color(0xff191B5A),
      ),
      body: Row(
        children: [
          Column(
            children: [
              Container(
                height: 500.0,
                width: 110,
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: Image.asset('images/sidebar-2.jpg',
                          fit: BoxFit.cover),
                    ),
                    Positioned.fill(
                      child: Container(
                        color: Colors.black54.withOpacity(
                          0.8,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Container(
                        width: 150,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          const Text(
                            'SHEHAB',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              height: 2.0,
                            ),
                          ),
                          const SizedBox(
                            width: 150.0,
                            child: SizedBox(
                              height: 20,
                              child: Divider(color: Colors.white),
                            ),
                          ),
                          const Text(
                            'ADD USER',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              height: 2.0,
                            ),
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          const Text(
                            'PRODUCT',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              height: 2.0,
                            ),
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          Container(
                            child: const Text(
                              'ORDERS',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                                height: 2.0,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          Container(
                            child: const Text(
                              'LOGOUT',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                                height: 2.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            width: 20.0,
          ),
          Row(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 80.0),
                    child: Container(
                      height: 500.0,
                      width: 260.0,
                      color: Color(0xff33368B),
                      // padding: EdgeInsets.only(top: 10.0),
                      child: Column(
                        children: [
                          Row(
                              // mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 250,
                                  height: 40.0,
                                  // color: Color(0xff8642AD),
                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0),color:Color(0xff8642AD), ),
                                  child: const Text(
                                    
                                    'Product list',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20.0),
                                 ),
                             ),

                          ]),
                          SizedBox(height: 10.0,),


                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Text('IMAGE',style: TextStyle(color: Colors.white,fontSize: 11.0,),),
                                        SizedBox(width: 20.0,),
                                        Text('NAME',style: TextStyle(color: Colors.white,fontSize: 11.0),),
                                        SizedBox(width: 20.0,),
                                        Text('PRICE',style: TextStyle(color: Colors.white,fontSize: 11.0),),
                                        SizedBox(width: 20.0,),
                                        Container( width:75.0,height:30.0,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0),color:Color(
                                            0xffA56BC6),),child: Center(child: Text('ADD NEW',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),),
                                      ],
                                    ),
                                    SizedBox(height: 20.0,child: Divider(color: Colors.white,),),

                                    Row(
                                      children: [
                                        Image.asset('images/realme-2-pro-rmx1801-original-imaf9cuf3y3gn9tb.jpeg',
                                            height: 40.0, width: 40.0,),
                                        SizedBox(width: 10.0,),
                                        Text('Realm2 pro',style: TextStyle(color: Colors.white,fontSize: 11.0),),
                                        SizedBox(width: 10.0,),
                                        Text('5000',style: TextStyle(color: Colors.white,fontSize: 11.0),),
                                        SizedBox(width: 10.0,),
                                        Container( width:70.0,height:30.0,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0),color:Color(
                                            0xff43A4DA),),child: Center(child: Text('DELETE',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),),
                                      ],
                                    ),
                                    SizedBox(height: 20.0,),
                                    Row(
                                        children: [
                                        Image.asset('images/iphone-6s-gold-64gb-1000.png',
                                        height: 40.0, width: 40.0,),
                                        SizedBox(width: 10.0,),
                                        Text('Iphone 6e',style: TextStyle(color: Colors.white,fontSize: 11.0),),
                                        SizedBox(width: 10.0,),
                                        Text('5000',style: TextStyle(color: Colors.white,fontSize: 11.0),),
                                        SizedBox(width: 10.0,),
                                        Container( width:75.0,height:25.0,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0),color:Color(
                                        0xff43A4DA),),child: Center(child: Text('DELETE',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),),
                                                                                        ],
                                    ),
                                    SizedBox(height: 20.0,),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Image.asset('images/530201353846AM_635_sony_xperia_z.png',
                                          height: 40.0, width: 40.0,),
                                        SizedBox(width: 10.0,),
                                        Text('Sony',style: TextStyle(color: Colors.white,fontSize: 11.0),),
                                        SizedBox(width: 10.0,),
                                        Text('5000',style: TextStyle(color: Colors.white,fontSize: 11.0),),
                                        SizedBox(width: 10.0,),
                                        Container( width:75.0,height:25.0,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0),color:Color(
                                            0xff43A4DA),),child: Center(child: Text('DELETE',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),),
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
