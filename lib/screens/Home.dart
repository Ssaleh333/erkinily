
import 'dart:ui';

import 'package:erkinily/screens/Reservation.dart';
import 'package:erkinily/screens/qr_Code.dart';
import 'package:erkinily/screens/return.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'Profile.dart';

class OffersModel{
  final Image image;
  final String city;
  final String location;
  final String num;
  final String price;

  OffersModel({
    required this.image,
    required this.city,
    required this.location,
    required this.num,
    required this.price
  });
}
class Home_Screen extends StatelessWidget {

 // int index =0;
  List<OffersModel> offers =[

    OffersModel(image: Image.asset('assets/images/img.jpg',), city: 'Elmansoura', location: '21stGehan', num: '7 avaliable', price: '5 EGP/hour'),
    OffersModel(image: Image.asset('assets/images/img.jpg',), city: 'Elmansoura', location: 'AlTeraa', num: '2 avaliable', price: '2 EGP/hour'),
    OffersModel(image: Image.asset('assets/images/img.jpg',), city: 'Elmansoura', location: '21Gehan', num: '7 avaliable', price: '5 EGP/hour')
  ];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
appBar: AppBar(

        backgroundColor: Colors.white,
        elevation: 0,
  actions: [
    Card
      (color: Colors.grey[100],
        child: IconButton(onPressed: (){}, icon: Icon(Icons.notifications),color:Colors.indigoAccent))
  ],
),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10))
                  ),
                  child: Card(

                    child: Image(
                      height: 60,
                      width: 60,
                      image: NetworkImage(
                        'https://png.pngtree.com/illustration/20220317/ourmid/pngtree-illustration-of-the-head-of-the-boy-in-the-sweater-image_61962.jpg',

                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  width: 7,
                ),
                Text(
                  'Welcome,',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'Mohamed Ahmed',
                  style: TextStyle(
                    fontSize: 15,
                    // fontWeight: FontWeight.w400
                  ),
                )
              ],
            ),
              SizedBox(
                height: 20,
              ),
            Row(
              children:[
             Icon(Icons.credit_card,
             color: Colors.indigoAccent,),
                SizedBox(
                  width: 6,
                ),
                Text(
                  'Total cash',
                  style: TextStyle(
                    fontSize: 17,
                  //  fontWeight: FontWeight.w400
                  ),
                ),
                SizedBox(
                  width: 7,
                ),
                Text(
                  '230 LE',
                  style: TextStyle(
                      fontSize: 17,
                      color: Colors.indigoAccent,
                      fontWeight: FontWeight.bold
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
       /*     SizedBox(
              height: 300,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                  itemBuilder: (context,index)=>buildOffersItem(offers[index]),

                  itemCount: offers.length),
            ) ,  */

         SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
               crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Card(
                    elevation: 5,
                    child: Container(
                      padding: EdgeInsets.all(8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset('assets/images/img.jpg',width:220,height: 220,fit: BoxFit.fill,),
                          Text(
                            'Elmansoura',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 20,

                            ),
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Text(
                              '21st Gehan'
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            children: [
                              Icon(Icons.directions_car_sharp,
                                size: 20,
                                color: Colors.green,),
                              SizedBox(
                                width: 9,
                              ),
                              Text(
                                '7 available',
                                style: TextStyle(
                                    color: Colors.green,
                                    fontWeight: FontWeight.w500
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                              Container(
                                child: ElevatedButton(
                                  onPressed: (){
                                    final route=MaterialPageRoute(builder: (context)=>Reservation());
                                    Navigator.push(context, route);
                                  },
                                  style: ElevatedButton.styleFrom(
                                      primary: Colors.indigoAccent,
                                      // shape: MaterialStateProperty.all()
                                      shape:     RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(9)
                                      )
                                  ),
                                  child: Row(
                                    children: [
                                      Icon(Icons.location_on_outlined),
                                      Text(
                                          'Book Now'
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 18,
                              ),
                              Text(
                                '5 EGP / hour',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.indigoAccent
                                ),
                              )
                            ],
                          ),

                        ],
                      ),
                    ),
                  ),
                  Card(
                    elevation: 5,
                    child: Container(
                      padding: EdgeInsets.all(8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset('assets/images/img.jpg',width:220,height: 220,fit: BoxFit.fill,),
                          Text(
                            'Elmansoura',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 20,

                            ),
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Text(
                              '21st Gehan'
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            children: [
                              Icon(Icons.directions_car_sharp,
                                size: 20,
                                color: Colors.green,),
                              SizedBox(
                                width: 9,
                              ),
                              Text(
                                '7 available',
                                style: TextStyle(
                                    color: Colors.green,
                                    fontWeight: FontWeight.w500
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                              Container(
                                child: ElevatedButton(
                                  onPressed: (){
                                    final route=MaterialPageRoute(builder: (context)=>Reservation());
                                    Navigator.push(context, route);
                                  },
                                  style: ElevatedButton.styleFrom(
                                      primary: Colors.indigoAccent,
                                      // shape: MaterialStateProperty.all()
                                      shape:     RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(9)
                                      )
                                  ),
                                  child: Row(
                                    children: [
                                      Icon(Icons.location_on_outlined),
                                      Text(
                                          'Book Now'
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 18,
                              ),
                              Text(
                                '5 EGP / hour',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.indigoAccent
                                ),
                              )
                            ],
                          ),

                        ],
                      ),
                    ),
                  ),
                  Card(
                    elevation: 5,
                    child: Container(
                      padding: EdgeInsets.all(8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset('assets/images/img.jpg',width:220,height: 220,fit: BoxFit.fill,),
                          Text(
                            'Elmansoura',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 20,

                            ),
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Text(
                              '21st Gehan'
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            children: [
                              Icon(Icons.directions_car_sharp,
                                size: 20,
                                color: Colors.green,),
                              SizedBox(
                                width: 9,
                              ),
                              Text(
                                '7 available',
                                style: TextStyle(
                                    color: Colors.green,
                                    fontWeight: FontWeight.w500
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                              Container(
                                child: ElevatedButton(
                                  onPressed: (){
                                    final route=MaterialPageRoute(builder: (context)=>Reservation());
                                    Navigator.push(context, route);
                                  },
                                  style: ElevatedButton.styleFrom(
                                      primary: Colors.indigoAccent,
                                      // shape: MaterialStateProperty.all()
                                      shape:     RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(9)
                                      )
                                  ),
                                  child: Row(
                                    children: [
                                      Icon(Icons.location_on_outlined),
                                      Text(
                                          'Book Now'
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 18,
                              ),
                              Text(
                                '5 EGP / hour',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.indigoAccent
                                ),
                              )
                            ],
                          ),

                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )

          ],
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
 /* Widget buildOffersItem(OffersModel offer)=>  Card(

  elevation: 2,
  child: Container(
    padding: EdgeInsets.all(8),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
       Image.asset('${offer.image}'),
        Text(
          '${offer.city}',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 20,

          ),
        ),
        SizedBox(
          height: 7,
        ),
        Text(
            '${offer.location}'
        ),
        SizedBox(
          height: 15,
        ),
        Row(
          children: [
            Icon(Icons.directions_car_sharp,
              size: 20,
              color: Colors.green,),
            SizedBox(
              width: 9,
            ),
            Text(
              '${offer.num}',
              style: TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.w500
              ),
            )
          ],
        ),
        SizedBox(
          height: 8,
        ),
        Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              child: ElevatedButton(
                onPressed: (){
                  final route=MaterialPageRoute(builder: (context)=>Reservation());
                  Navigator.push(context, route);
                },
                style: ElevatedButton.styleFrom(
                    primary: Colors.indigoAccent,
                    // shape: MaterialStateProperty.all()
                    shape:     RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(9)
                    )
                ),
                child: Row(
                  children: [
                    Icon(Icons.location_on_outlined),
                    Text(
                        'Book Now'
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              '${offer.price}',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.indigoAccent
              ),
            )
          ],
        ),

      ],
    ),
  ),
);  */
}
