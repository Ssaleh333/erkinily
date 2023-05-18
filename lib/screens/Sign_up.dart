

import 'dart:ui';



import 'package:erkinily/Code_Screen.dart';
import 'package:flutter/material.dart';

import 'Home.dart';
import 'Login.dart';

class Sign_up  extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
      ),
    body: Padding(
      padding: const EdgeInsets.all(16),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
 SizedBox(
   height: 30,
 ),
            Text(
              'Name',
              style: TextStyle(
                fontSize: 20
              ),
            ),
            SizedBox(
              height: 10,
            ),
          TextFormField(
            keyboardType: TextInputType.name,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.person_outline),
              border: OutlineInputBorder(),
              hintText: 'Enter Your Name'
            ),
          ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Email',
              style: TextStyle(
                  fontSize: 20
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email_outlined),
                  border: OutlineInputBorder(),
                  hintText: 'Enter Your Email'
              ),

            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Phone Number',
              style: TextStyle(
                  fontSize: 20
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.phone_outlined),
                  border: OutlineInputBorder(),
                  hintText: 'Enter Your Phone'
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Password',
              style: TextStyle(
                  fontSize: 20
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock_outline),
                  border: OutlineInputBorder(),
                  hintText: 'Enter Your Password'
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Text(
                  'I agree'
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'Terms & Conditions',
                  style: TextStyle(
                    color: Colors.indigoAccent,
                    fontSize: 15,
                    fontWeight: FontWeight.bold
                  ),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
           Container(
             height: 55,
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(8),
               color: Colors.indigoAccent
             ),
             width: double.infinity,
             child: MaterialButton(
               onPressed: (){
                 final route=MaterialPageRoute(builder: (context)=>CodeScreen());
                 Navigator.push(context, route);
               },
               child: Text(
                 'Sign Up',style: TextStyle(
                   color: Colors.white,
                   fontWeight: FontWeight.w500,
                   fontSize: 25
                 ),
               ),
             ),
           ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already have an account?'
                ),

          TextButton(
            onPressed: (){
              final route=MaterialPageRoute(builder: (context)=>Login_Screen());
              Navigator.push(context, route);
            },
            child: Text('Login',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.indigoAccent
              ),),
          ),


              ],
            )
          ],
        ),
      ),
    ),
    );
  }
}
