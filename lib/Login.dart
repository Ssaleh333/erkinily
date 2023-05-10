

import 'dart:ui';


import 'package:erkinily/Code_Screen.dart';
import 'package:flutter/material.dart';


import 'Home.dart';
import 'Profile.dart';
import 'Sign_up.dart';

class Login_Screen extends StatelessWidget {
  var formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),

      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Form(
            key: formkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 80,
                ),
                    Text(
                      'Email',
                      style: TextStyle(
                          fontSize: 20
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      onFieldSubmitted: (String value){print(value);},
                      onChanged: (String value){print(value);},
                      validator: (value){
                        if(value!.isEmpty){
                          return 'Email must not be empty';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.person_outline),
                          border: OutlineInputBorder(),
                          hintText: 'Enter Your Email'
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Password',
                      style: TextStyle(
                          fontSize: 20
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.visiblePassword,
                      onFieldSubmitted: (String value){print(value);},
                      onChanged: (String value){print(value);},
                      validator: (value){
                        if(value!.isEmpty){
                          return 'password must not be empty';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock_outline),
                          border: OutlineInputBorder(),
                          hintText: 'Enter Your Password'
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Forget your Password?',
                      style: TextStyle(
                          color: Colors.indigoAccent
                      ),
                    ),
                    SizedBox(
                      height: 40,
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
                          'Login',
                          style: TextStyle(
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
                            'Don\'t have an account?'
                        ),

                        TextButton(
                          onPressed: (){

                          },
                          child: Text('Sign up',
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
      ),

    );
  }
}
