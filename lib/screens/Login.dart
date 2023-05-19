

import 'dart:ui';


import 'package:erkinily/screens/Code_Screen.dart';
import 'package:flutter/material.dart';


import 'Home.dart';
import 'Profile.dart';
import 'Sign_up.dart';

class Login_Screen extends StatefulWidget {
  @override
  State<Login_Screen> createState() => _Login_ScreenState();
}

class _Login_ScreenState extends State<Login_Screen> {
  var emailController=TextEditingController();

  var passwordController=TextEditingController();

   bool oobscureText= true;

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
                          fontSize: 16
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: emailController,
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
                          contentPadding: EdgeInsets.symmetric(horizontal: 9),
                          prefixIcon: Icon(Icons.person_outline),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12)
                          ),
                          hintText: 'Enter Your Email'
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Password',
                      style: TextStyle(
                          fontSize: 16
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller:passwordController,
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: oobscureText,
                      onFieldSubmitted: (String value){print(value);},
                      onChanged: (String value){print(value);},
                      validator: (value){
                        if(value!.isEmpty){
                          return 'password must not be empty';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(horizontal: 9),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12)
                          ),
                          prefixIcon: Icon(Icons.lock_outline),
                          suffixIcon: GestureDetector(onTap: (){
                            setState((){
                              oobscureText=!oobscureText;
                            });
                          },
                          child:Icon(oobscureText ?Icons.visibility:Icons.visibility_off),),
                       //   border: OutlineInputBorder(),
                          hintText: 'Enter Your Password'
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    GestureDetector(
                      child: Text(
                        'Forget your Password?',
                        style: TextStyle(
                            color: Colors.indigoAccent
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
                          color: Colors.indigoAccent
                      ),
                      width: double.infinity,
                      child: MaterialButton(
                        onPressed: (){
                          if(formkey.currentState!.validate()){
                            print(emailController.text);
                            print(passwordController.text);
                          }
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
