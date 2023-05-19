import 'package:erkinily/screens/Home.dart';
import 'package:erkinily/screens/Sign_up.dart';
import 'package:erkinily/screens/onboard_Model.dart';
import 'package:flutter/material.dart';
class Onboard extends StatefulWidget {


  @override
  State<Onboard> createState() => _OnboardState();
}

class _OnboardState extends State<Onboard> {
  int currentIndex=0;
  late PageController _pageController;

  @override
  void initState(){
    _pageController=PageController(initialPage: 0);
    super.initState();
  }
  @override
  void dispose(){
    _pageController.dispose();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          TextButton(onPressed: (){
            final route=MaterialPageRoute(builder: (context)=>Sign_up());
            Navigator.push(context, route);
          },
              child: Text("Skip",style: TextStyle(color: Colors.grey),
              )),
        ],
      ),
      body: Padding(
        padding:const EdgeInsets.all(16),
        child: PageView.builder(
            itemCount: screens.length,
            controller: _pageController,
            onPageChanged: (int index){
              setState((){
                currentIndex=index;
              });
        },
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context,index){
          return Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(screens[index].img),
              Container(
                height: 10,
                child: ListView.builder(
                  shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: screens.length,
                    itemBuilder: (_,index){
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                   Container(
                     margin: EdgeInsets.symmetric(horizontal: 3),
                     width: currentIndex==index? 25:8,
                     height: 8,
                     decoration: BoxDecoration(
                       color: Colors.indigoAccent,
                       borderRadius: BorderRadius.circular(10)
                     ),
                   )
                  ],
                  );
                }),
              ),
              Text(screens[index].text,style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black
              ),),
              Text(screens[index].desc,
                textAlign: TextAlign.center,
                style: TextStyle(
                fontSize: 23,
                color: Colors.grey
              ),),
              InkWell(
                onTap: (){
                  if(index==screens.length-1){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Sign_up()));
                  }
                  _pageController.nextPage(duration: Duration(microseconds: 300), curve: Curves.bounceIn,
                  );
                },
                child:  Container(

                  padding: EdgeInsets.symmetric(
                    horizontal: 100,vertical: 13
                  ),
                  decoration: BoxDecoration(
                    color: Colors.indigoAccent,
                    borderRadius: BorderRadius.circular(16)
                  ),
                child: Text('Next',style: TextStyle(
                  color: Colors.white,
                  fontSize: 20
                ),),

                ),

              )
            ],
          );
        }),
      ),
    );
  }
}
