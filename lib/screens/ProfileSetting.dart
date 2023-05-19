import 'package:erkinily/screens/AcountSettings.dart';
import 'package:erkinily/screens/ChangePassword.dart';
import 'package:flutter/material.dart';

class ProfileSetting extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: (){
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back_outlined,color: Colors.black,),
        ),
        title: Text(
          'Profile Settings',style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 23,
          color: Colors.black
        ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Account Settings',style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.bold
            ),
            ),
            SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: (){
                final route=MaterialPageRoute(builder: (context)=>AcountSettings());
                Navigator.push(context, route);
              },
              child: Row(

                children: [
                  Icon(Icons.settings_outlined,color: Colors.indigoAccent,),
                  SizedBox(width: 6,),
                  Expanded(
                    child: Text(
                      'Acount Settings',
                      style: TextStyle(
                          color:Colors.grey,
                          fontSize: 18,
                          fontWeight: FontWeight.w500
                      ),
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios_outlined,size: 18,color: Colors.black,)
                ],
              ),
            ),
            SizedBox(height: 9,),
            Divider(
              color: Colors.grey,
              height: 5,
              thickness: 1,
            ),
            SizedBox(height: 10,),
            GestureDetector(
              onTap: (){
                final route=MaterialPageRoute(builder: (context)=>ChangePassword());
                Navigator.push(context, route);
              },
              child: Row(

                children: [
                  Icon(Icons.password_outlined,color: Colors.indigoAccent,),
                  SizedBox(width: 6,),
                  Expanded(
                    child: Text(
                      ' Change Password',
                      style: TextStyle(
                          color:Colors.grey,
                          fontSize: 18,
                          fontWeight: FontWeight.w500
                      ),
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios_outlined,size: 18,color: Colors.black,)
                ],
              ),
            ),
            SizedBox(height: 9,),

          ],
        ),
      ),
    );
  }
}
