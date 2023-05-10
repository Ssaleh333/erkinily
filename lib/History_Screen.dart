import 'dart:ui';

import 'package:flutter/material.dart';

class History_Screen extends StatelessWidget {


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
          'History',
        style: TextStyle(
          color: Colors.black,
          fontSize: 25,
        ),
      ),
    ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                elevation: 5,
                child: Container(
                  height: 160,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(Icons.my_location_outlined,
                              color: Colors.indigo,),
                            SizedBox(
                              width: 5,
                            ),
                            Expanded(
                              child: Text(
                                'Location',
                                style: TextStyle(
                                    fontSize: 20
                                ),
                              ),
                            ),
                            Text(
                              'Elmansoura',
                              style: TextStyle(
                                  fontSize: 20
                              ),
                            )
                          ],
                        ),
                        Row(
                          //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(Icons.location_on_outlined,
                              color: Colors.indigo,),
                            SizedBox(
                              width: 5,
                            ),
                            Expanded(
                              child: Text(
                                'Address',
                                style: TextStyle(
                                    fontSize: 20
                                ),
                              ),
                            ),
                            Text(
                              '21 st Gehan',
                              style: TextStyle(
                                  fontSize: 20
                              ),
                            )
                          ],
                        ),
                        Row(
                          //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(Icons.timer_outlined,
                              color: Colors.indigo,),
                            SizedBox(
                              width: 5,
                            ),
                            Expanded(
                              child: Text(
                                'Date',
                                style: TextStyle(
                                    fontSize: 20
                                ),
                              ),
                            ),
                            Text(
                              '29/1/2023',
                              style: TextStyle(
                                  fontSize: 20
                              ),
                            )
                          ],
                        ),
                        Row(
                          //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(
                              child: Text(
                                '1h , 30m',
                                style: TextStyle(
                                    fontSize: 20
                                ),
                              ),
                            ),
                            Text(
                              '30 EGP',
                              style: TextStyle(
                                  fontSize: 20,
                                fontWeight: FontWeight.bold
                              ),
                            )
                          ],
                        ),
                      ],
                    )


                  ),
                ),
              ),
              Card(
                elevation: 5,
                child: Container(
                  height: 180,
                  child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(Icons.my_location_outlined,
                                color: Colors.indigo,),
                              SizedBox(
                                width: 5,
                              ),
                              Expanded(
                                child: Text(
                                  'Location',
                                  style: TextStyle(
                                      fontSize: 20
                                  ),
                                ),
                              ),
                              Text(
                                'Elmansoura',
                                style: TextStyle(
                                    fontSize: 20
                                ),
                              )
                            ],
                          ),
                          Row(
                            //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(Icons.location_on_outlined,
                                color: Colors.indigo,),
                              SizedBox(
                                width: 5,
                              ),
                              Expanded(
                                child: Text(
                                  'Address',
                                  style: TextStyle(
                                      fontSize: 20
                                  ),
                                ),
                              ),
                              Text(
                                '21 st Gehan',
                                style: TextStyle(
                                    fontSize: 20
                                ),
                              )
                            ],
                          ),
                          Row(
                            //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(Icons.timer_outlined,
                                color: Colors.indigo,),
                              SizedBox(
                                width: 5,
                              ),
                              Expanded(
                                child: Text(
                                  'Date',
                                  style: TextStyle(
                                      fontSize: 20
                                  ),
                                ),
                              ),
                              Text(
                                '29/1/2023',
                                style: TextStyle(
                                    fontSize: 20
                                ),
                              )
                            ],
                          ),
                          Row(
                            //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Expanded(
                                child: Text(
                                  '1h , 30m',
                                  style: TextStyle(
                                      fontSize: 20
                                  ),
                                ),
                              ),
                              Text(
                                '30 EGP',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold
                                ),
                              )
                            ],
                          ),
                        ],
                      )


                  ),
                ),
              ),
              Card(
                elevation: 5,
                child: Container(
                  height: 180,
                  child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(Icons.my_location_outlined,
                                color: Colors.indigo,),
                              SizedBox(
                                width: 5,
                              ),
                              Expanded(
                                child: Text(
                                  'Location',
                                  style: TextStyle(
                                      fontSize: 20
                                  ),
                                ),
                              ),
                              Text(
                                'Elmansoura',
                                style: TextStyle(
                                    fontSize: 20
                                ),
                              )
                            ],
                          ),
                          Row(
                            //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(Icons.location_on_outlined,
                                color: Colors.indigo,),
                              SizedBox(
                                width: 5,
                              ),
                              Expanded(
                                child: Text(
                                  'Address',
                                  style: TextStyle(
                                      fontSize: 20
                                  ),
                                ),
                              ),
                              Text(
                                '21 st Gehan',
                                style: TextStyle(
                                    fontSize: 20
                                ),
                              )
                            ],
                          ),
                          Row(
                            //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(Icons.timer_outlined,
                                color: Colors.indigo,),
                              SizedBox(
                                width: 5,
                              ),
                              Expanded(
                                child: Text(
                                  'Date',
                                  style: TextStyle(
                                      fontSize: 20
                                  ),
                                ),
                              ),
                              Text(
                                '29/1/2023',
                                style: TextStyle(
                                    fontSize: 20
                                ),
                              )
                            ],
                          ),
                          Row(
                            //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Expanded(
                                child: Text(
                                  '1h , 30m',
                                  style: TextStyle(
                                      fontSize: 20
                                  ),
                                ),
                              ),
                              Text(
                                '30 EGP',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold
                                ),
                              )
                            ],
                          ),
                        ],
                      )


                  ),
                ),
              ),
              Card(
                elevation: 5,
                child: Container(
                  height: 180,
                  child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(Icons.my_location_outlined,
                                color: Colors.indigo,),
                              SizedBox(
                                width: 5,
                              ),
                              Expanded(
                                child: Text(
                                  'Location',
                                  style: TextStyle(
                                      fontSize: 20
                                  ),
                                ),
                              ),
                              Text(
                                'Elmansoura',
                                style: TextStyle(
                                    fontSize: 20
                                ),
                              )
                            ],
                          ),
                          Row(
                            //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(Icons.location_on_outlined,
                                color: Colors.indigo,),
                              SizedBox(
                                width: 5,
                              ),
                              Expanded(
                                child: Text(
                                  'Address',
                                  style: TextStyle(
                                      fontSize: 20
                                  ),
                                ),
                              ),
                              Text(
                                '21 st Gehan',
                                style: TextStyle(
                                    fontSize: 20
                                ),
                              )
                            ],
                          ),
                          Row(
                            //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(Icons.timer_outlined,
                                color: Colors.indigo,),
                              SizedBox(
                                width: 5,
                              ),
                              Expanded(
                                child: Text(
                                  'Date',
                                  style: TextStyle(
                                      fontSize: 20
                                  ),
                                ),
                              ),
                              Text(
                                '29/1/2023',
                                style: TextStyle(
                                    fontSize: 20
                                ),
                              )
                            ],
                          ),
                          Row(
                            //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Expanded(
                                child: Text(
                                  '1h , 30m',
                                  style: TextStyle(
                                      fontSize: 20
                                  ),
                                ),
                              ),
                              Text(
                                '30 EGP',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold
                                ),
                              )
                            ],
                          ),
                        ],
                      )


                  ),
                ),
              ),
              Card(
                elevation: 5,
                child: Container(
                  height: 180,
                  child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(Icons.my_location_outlined,
                                color: Colors.indigo,),
                              SizedBox(
                                width: 5,
                              ),
                              Expanded(
                                child: Text(
                                  'Location',
                                  style: TextStyle(
                                      fontSize: 20
                                  ),
                                ),
                              ),
                              Text(
                                'Elmansoura',
                                style: TextStyle(
                                    fontSize: 20
                                ),
                              )
                            ],
                          ),
                          Row(
                            //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(Icons.location_on_outlined,
                                color: Colors.indigo,),
                              SizedBox(
                                width: 5,
                              ),
                              Expanded(
                                child: Text(
                                  'Address',
                                  style: TextStyle(
                                      fontSize: 20
                                  ),
                                ),
                              ),
                              Text(
                                '21 st Gehan',
                                style: TextStyle(
                                    fontSize: 20
                                ),
                              )
                            ],
                          ),
                          Row(
                            //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(Icons.timer_outlined,
                                color: Colors.indigo,),
                              SizedBox(
                                width: 5,
                              ),
                              Expanded(
                                child: Text(
                                  'Date',
                                  style: TextStyle(
                                      fontSize: 20
                                  ),
                                ),
                              ),
                              Text(
                                '29/1/2023',
                                style: TextStyle(
                                    fontSize: 20
                                ),
                              )
                            ],
                          ),
                          Row(
                            //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Expanded(
                                child: Text(
                                  '1h , 30m',
                                  style: TextStyle(
                                      fontSize: 20
                                  ),
                                ),
                              ),
                              Text(
                                '30 EGP',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold
                                ),
                              )
                            ],
                          ),
                        ],
                      )


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
