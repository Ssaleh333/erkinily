import 'package:flutter/material.dart';

class AcountSettings extends StatelessWidget {

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
          'Account Settings',style: TextStyle(
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
                'Name',
                style: TextStyle(
                    fontSize: 16,
                  fontWeight: FontWeight.w500
                ),
              ),
              SizedBox(
                height: 5,
              ),
              TextFormField(
                keyboardType: TextInputType.name,
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
                height: 30,
              ),
              Text(
                'Phone Number',
                style: TextStyle(
                    fontSize: 16,
                  fontWeight: FontWeight.w500
                ),
              ),
              SizedBox(
                height: 5,
              ),
              TextFormField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 9),
                    prefixIcon: Icon(Icons.phone_outlined),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12)
                    ),
                    hintText: 'Enter Your Phone'
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Email',
                style: TextStyle(
                    fontSize: 16,
                  fontWeight: FontWeight.w500
                ),
              ),
              SizedBox(
                height: 5,
              ),
              TextFormField(
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
