

import 'dart:ui';



import 'package:custom_check_box/custom_check_box.dart';
import 'package:erkinily/screens/Code_Screen.dart';
import 'package:flutter/material.dart';

import 'Home.dart';
import 'Login.dart';

class Sign_up  extends StatefulWidget {


  @override
  State<Sign_up> createState() => _Sign_upState();
}

class _Sign_upState extends State<Sign_up> {
  bool isChecked=false;
  bool shouldCheck = false;
  bool shouldCheckDefault = false;
  var emailController=TextEditingController();

  var passwordController=TextEditingController();
  var nameController=TextEditingController();
  var phoneController=TextEditingController();


  bool oobscureText= true;

  var formkey = GlobalKey<FormState>();
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
        child: Form(
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
                  fontSize: 16
                ),
              ),
              SizedBox(
                height: 10,
              ),
            TextFormField(
              keyboardType: TextInputType.name,
              onFieldSubmitted: (String value){print(value);},
              onChanged: (String value){print(value);},
              validator: (value){
                if(value!.isEmpty){
                  return 'name must not be empty';
                }
                return null;
              },
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(horizontal: 9),
                prefixIcon: Icon(Icons.person_outline),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12)
                  ),
                hintText: 'Enter Your Name'
              ),
            ),
              SizedBox(
                height: 15,
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
                onFieldSubmitted: (String value){print(value);},
                onChanged: (String value){print(value);},
                validator: (value){
                  if(value!.isEmpty){
                    return 'email must not be empty';
                  }
                  return null;
                },
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 9),
                    prefixIcon: Icon(Icons.email_outlined),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12)
                    ),
                    hintText: 'Enter Your Email'
                ),

              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Phone Number',
                style: TextStyle(
                    fontSize: 16
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                keyboardType: TextInputType.phone,
                onFieldSubmitted: (String value){print(value);},
                onChanged: (String value){print(value);},
                validator: (value){
                  if(value!.isEmpty){
                    return 'phone must not be empty';
                  }
                  return null;
                },
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 9),
                    prefixIcon: Icon(Icons.phone_outlined),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12)
                    ),                  hintText: 'Enter Your Phone'
                ),
              ),
              SizedBox(
                height: 20,
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
                onFieldSubmitted: (String value){print(value);},
                onChanged: (String value){print(value);},
                validator: (value){
                  if(value!.isEmpty){
                    return 'password must not be empty';
                  }
                  return null;
                },
                obscureText: oobscureText,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 9),
                    prefixIcon: Icon(Icons.lock_outline),
                    suffixIcon: GestureDetector(onTap: (){
                      setState((){
                        oobscureText=!oobscureText;
                      });
                    },
                      child:Icon(oobscureText ?Icons.visibility:Icons.visibility_off),),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12)
                    ),
                    hintText: 'Enter Your Password'
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomCheckBox(
                    value: shouldCheck,
                    shouldShowBorder: true,
                    borderColor: Colors.indigoAccent,
                    checkedFillColor: Colors.indigoAccent,
                    borderRadius: 7,
                    borderWidth: 2,
                    checkBoxSize: 19,
                    onChanged: (val) {
                      //do your stuff here
                      setState(() {
                        shouldCheck = val;
                      });
                    },
                  ),
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
                   if(formkey.currentState!.validate()){
                     print(emailController.text);
                     print(passwordController.text);
                     print(nameController.text);
                     print(phoneController.text);
                   }
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
    ),
    );
  }
}

