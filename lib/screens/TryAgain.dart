import 'package:flutter/material.dart';

class TryAgain extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/No.jpg'),
            SizedBox(height: 40,),
            Text(
              'No Internet Connection',
              style: TextStyle(
                  color: Colors.indigoAccent,
                  fontWeight: FontWeight.w500,
                  fontSize: 20
              ),
            ),
            SizedBox(height: 13,),
            Text(
              'Please check internet connection',
              style: TextStyle(
                  color: Colors.black,
                  // fontWeight: FontWeight.bold,
                  fontSize: 15
              ),
            ),
            SizedBox(height: 30,),
            Container(
              height: 55,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.indigoAccent
              ),
              width: double.infinity,
              child: MaterialButton(
                onPressed: (){
                  final route=MaterialPageRoute(builder: (context)=>TryAgain());
                  Navigator.push(context, route);
                },
                child: Text(
                  'Try Again',
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
