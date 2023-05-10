import 'package:flutter/material.dart';

class ChangePassword extends StatelessWidget {


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
          'Change Password',style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 23,
            color: Colors.black
        ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 80,
              ),
              Text(
                'Old Password',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500
                ),
              ),
              SizedBox(
                height: 5,
              ),
              TextFormField(
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock_outline),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12)
                    ),
                    hintText: 'Enter Your Password'
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'New Password',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500
                ),
              ),
              SizedBox(
                height: 5,
              ),
              TextFormField(
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(

                    prefixIcon: Icon(Icons.lock_outline),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12)
                    ),
                    hintText: 'Enter Your Password'
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Repeat Password',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500
                ),
              ),
              SizedBox(
                height: 5,
              ),
              TextFormField(
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock_outline),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12)
                    ),
                    hintText: 'Enter Your Password'
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

                  },
                  child: Text(
                    'Save',
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
      ),
    );
  }
}
