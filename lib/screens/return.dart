import 'package:erkinily/screens/qr_Code.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Profile.dart';
class UserModel{
  final String date;
  final String city;
  final String location;
  final String price;
  final String time;

  UserModel({
    required this.time,
    required this.city,
    required this.location,
    required this.date,
    required this.price
  });
}
class Return extends StatelessWidget {
  List<UserModel>users=[
    UserModel(time: '12:30', city: 'Elmansoura', location: 'AlTeraa', date: '1/2/2023', price: '30 EGP'),
    UserModel(time: '3:46', city: 'Elmansoura', location: '21stGehan', date: '12/3/2023', price: '45 EGP'),
    UserModel(time: '12:30', city: 'Elmansoura', location: 'AlTeraa', date: '12/3/2023', price: '30 EGP'),
    UserModel(time: '12:30', city: 'Elmansoura', location: 'AlTeraa', date: '12/3/2023', price: '30 EGP')


  ];

  @override
  Widget build(BuildContext context) {
    return users.length !=0
        ?Scaffold(
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
      body:ListView.separated(
          itemBuilder: (context,index)=>buildHistoryItem(users[index]),
          separatorBuilder: (context,index)=>SizedBox(height: 7,),
          itemCount: users.length) ,
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

    ):
    Scaffold(
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
       Row(
         mainAxisAlignment: MainAxisAlignment.center,
          children: [
       Image(image: AssetImage('assets/images/box.jpg',),
          width: 200,height: 200,

      )
    ]
        ),
        Text('You have no history',style: TextStyle(color: Colors.grey),)
      ],),
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

  Widget buildHistoryItem(UserModel user) => Padding(
    padding: const EdgeInsets.all(10.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('${user.date}',style: TextStyle(fontWeight: FontWeight.w500),),
        SizedBox(height: 6,),
        Card(
          elevation: 2,
          child: Container(
            height: 130,
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
                            '${user.city}',
                            style: TextStyle(
                                fontSize: 20
                            ),
                          ),
                        ),
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
                            '${user.location}',
                            style: TextStyle(
                                fontSize: 20
                            ),
                          ),
                        ),
                        Text(
                          '${user.price}',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.indigoAccent
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 3,),
                    Row(
                      //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.timer_outlined,size: 20,
                          color: Colors.indigo,),
                        SizedBox(
                          width: 5,
                        ),
                        Expanded(
                          child: Text(
                            '${user.time}',
                            style: TextStyle(
                                fontSize: 15,fontWeight: FontWeight.w500
                            ),
                          ),
                        ),

                      ],
                    ),

                  ],
                )


            ),
          ),
        )
      ],
    ),
  );

}
