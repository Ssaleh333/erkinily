import 'package:erkinily/Home.dart';
import 'package:flutter/material.dart';

class Reservation extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10))
                      ),
                      child: Image(
                        height: 60,
                        width: 60,
                        image: NetworkImage(
                          'https://png.pngtree.com/illustration/20220317/ourmid/pngtree-illustration-of-the-head-of-the-boy-in-the-sweater-image_61962.jpg',

                        ),
                        fit: BoxFit.cover,
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
                Text(
                  'The Total amount required so far',style: TextStyle(
                  fontWeight: FontWeight.w500,color: Colors.black54
                ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  '66 EGP',style: TextStyle(
                    fontWeight: FontWeight.w500,color: Colors.indigoAccent,
                  fontSize: 28
                ),
                ),
                SizedBox(
                  height: 20,
                ),
                Card(
                  elevation: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.timer_outlined,color: Colors.indigoAccent,size: 24,),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Time',style: TextStyle(
                              fontSize: 19,fontWeight: FontWeight.w500
                            ),
                            ),
                            Text(
                              '1h , 22m',style: TextStyle(
                                fontSize: 17,fontWeight: FontWeight.w500,color: Colors.indigoAccent
                            ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Card(
                  elevation: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.timer_outlined,color: Colors.indigoAccent,size: 24,),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Location',style: TextStyle(
                                fontSize: 19,fontWeight: FontWeight.w500
                            ),
                            ),
                            Text(
                              'Elmansoura',style: TextStyle(
                                fontSize: 17,fontWeight: FontWeight.w500,color: Colors.black
                            ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Card(
                  elevation: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.timer_outlined,color: Colors.indigoAccent,size: 24,),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Address',style: TextStyle(
                                fontSize: 19,fontWeight: FontWeight.w500
                            ),
                            ),
                            Text(
                              '21st Gehan',style: TextStyle(
                                fontSize: 17,fontWeight: FontWeight.w500,color: Colors.black
                            ),
                            ),
                          ],
                        ),


                      ],
                    ),

                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  height: 55,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.red
                  ),
                  width: double.infinity,
                  child: MaterialButton(
                    onPressed: (){
                      final route=MaterialPageRoute(builder: (context)=>Home_Screen());
                      Navigator.push(context, route);
                    },
                    child: Text(
                      'Cancel',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 25
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
    );
  }
}
