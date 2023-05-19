


import 'dart:ui';

import 'package:erkinily/screens/AboutApp.dart';
import 'package:erkinily/screens/ContactUs.dart';
import 'package:erkinily/screens/Login.dart';
import 'package:erkinily/screens/ProfileSetting.dart';
import 'package:erkinily/screens/Recharge.dart';
import 'package:erkinily/screens/Terms.dart';
import 'package:erkinily/screens/qr_Code.dart';
import 'package:erkinily/screens/return.dart';
import 'package:flutter/material.dart';



class Profile_Screen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          color: Colors.white,
          onPressed: (){
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.arrow_back_outlined,
            color: Colors.black,
            size: 25,
          ),
        ),
        title: Text(
          'Profile',
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
              Row(
                children: [
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)
                    ),
                    child: Image(
                      height: 139,
                      width: 139,
                      image: NetworkImage(
                        'https://png.pngtree.com/illustration/20220317/ourmid/pngtree-illustration-of-the-head-of-the-boy-in-the-sweater-image_61962.jpg',

                      ),
             fit: BoxFit.fill,
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                 Expanded(
                   child: GestureDetector(
                     onTap: (){
                       final route=MaterialPageRoute(builder: (context)=>RechargeScreen());
                       Navigator.push(context, route);
                     },
                     child: Card(
                       child: Container(
                         height:139 ,
                         child: Column(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             Icon(Icons.credit_card,
                               size: 40,
                               color: Colors.indigoAccent,),

                          Row(
                     mainAxisAlignment:MainAxisAlignment.center,
                            children: [
                              Text(
                                '230 L.E',
                                style: TextStyle(
                                    color: Colors.indigoAccent,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25
                                ),
                              ),
                              IconButton(
                                color: Colors.indigoAccent,
                                onPressed: (){
                                },
                                icon: Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.indigoAccent,
                                  size: 25,
                                ),
                              ),
                            ],
                          )

                           ],
                         ),
                       ),
                     ),
                   ),
                 ),

        ],
        ),
            SizedBox(
              height: 9,
            ),
            GestureDetector(
              onTap: (){
                final route=MaterialPageRoute(builder: (context)=>ProfileSetting());
                Navigator.push(context, route);
              },
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7)
                ),
                elevation: 2,
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Information',
                        style: TextStyle(
                          color:Colors.grey[400],
                          fontSize: 15,
                          fontWeight: FontWeight.w500
                        ),
                      ),
                      SizedBox(height: 6,),
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              'Mohamed Ahmed',
                              style: TextStyle(
                                  color:Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500
                              ),
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward_ios_outlined,size: 15,color: Colors.grey,)
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 9,),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7)
              ),
              elevation: 2,
              child: Padding(
                padding: const EdgeInsets.all(6),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'General',
                      style: TextStyle(
                          color:Colors.grey[400],
                          fontSize: 18,
                          fontWeight: FontWeight.w500
                      ),
                    ),
                    SizedBox(height: 9,),
                    GestureDetector(
                      onTap: (){
                        final route=MaterialPageRoute(builder: (context)=>AboutApp());
                        Navigator.push(context, route);
                      },
                      child: Row(

                        children: [
                          Expanded(
                            child: Text(
                              ' About us',
                              style: TextStyle(
                                  color:Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500
                              ),
                            ),
                          ),
                         Icon(
                           Icons.arrow_forward_ios_outlined,size: 15,color: Colors.grey,)
                        ],
                      ),
                    ),
                    SizedBox(height: 14,),
                    Divider(
                      color: Colors.grey[300],
                      height: 5,
                      thickness: 1,
                    ),
                    SizedBox(height: 9,),
                    GestureDetector(
                      onTap: (){
                        final route=MaterialPageRoute(builder: (context)=>ContactUs());
                        Navigator.push(context, route);
                      },
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              'Contact us',
                              style: TextStyle(
                                  color:Colors.black87,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500
                              ),
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward_ios_outlined,size: 15,color: Colors.grey,)
                        ],
                      ),
                    ),
                    SizedBox(height: 14,),
                    Divider(
                      color: Colors.grey[300],
                      height: 5,
                      thickness: 1,
                    ),
                    SizedBox(height: 9,),
                    GestureDetector(
                      onTap: (){
                        final route=MaterialPageRoute(builder: (context)=>Terms());
                        Navigator.push(context, route);
                      },
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              'Terms & Condations',
                              style: TextStyle(
                                  color:Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500
                              ),
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward_ios_outlined,size: 15,color: Colors.grey,)
                        ],
                      ),
                    ),
                    SizedBox(height: 14,),
                  ],
                ),
              ),
            ),
            SizedBox(height: 9,),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7)
              ),
              elevation: 2,
              child: Container(
                padding: EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            'Log out',
                            style: TextStyle(
                                color:Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.w500
                            ),
                          ),
                        ),
                        IconButton(
                          color: Colors.black,
                          onPressed: (
                              ){
                            final route=MaterialPageRoute(builder: (context)=>Login_Screen());
                            Navigator.push(context, route);
                          },
                          icon: Icon(
                            Icons.logout_outlined,
                            color: Colors.red,
                            size: 20,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
    ]
    ),
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 6,

        onPressed:() {
          final route=MaterialPageRoute(builder: (context)=>qr_Screen());
          Navigator.push(context, route);
        },
        backgroundColor: Colors.indigoAccent,
        child: Icon(Icons.qr_code,
          size: 35,),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        notchMargin: 8,
        shape: CircularNotchedRectangle(),
        child: Padding(
          padding: const EdgeInsets.all(3),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: (){
                  final route=MaterialPageRoute(builder: (context)=>Return());
                  Navigator.push(context, route);
                },
                icon: Icon(Icons.history_rounded,
                  color: Colors.grey,
                  size: 33,),
              ),
              SizedBox(
                width: 10,
              ),
              IconButton(
                onPressed: (){
                  final route=MaterialPageRoute(builder: (context)=>Profile_Screen());
                  Navigator.push(context, route);
                },
                icon: Icon(Icons.person_outline,
                  color: Colors.grey,
                  size: 33,),
              )
            ],
          ),
        ),
      ),
    );
  }
}
