import 'package:flutter/material.dart';

class ContactUs extends StatelessWidget {

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
          'Contact Us',style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 23,
            color: Colors.black
        ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(22.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Contact information',style: TextStyle(
                color: Colors.black54,fontSize: 18,fontWeight: FontWeight.w500
              ),
              ),
          SizedBox(height: 18
          ),
          Text(
            'Lorem sdfgfhgkl;lkjhgfdsadfghjloiuytrfkehbdfghdhgdfdffgdvfndhshf',
            style: TextStyle(
              color: Colors.grey,fontSize: 15,fontWeight: FontWeight.w500
          ),),
              SizedBox(height: 13,),
              Divider(
                color: Colors.grey,
                height: 5,
                thickness: 1,
              ),
              SizedBox(height: 16,),
          Text(
            'Message',style: TextStyle(
              color: Colors.black,fontSize: 18,fontWeight: FontWeight.w400
          ),),
              SizedBox(height: 13,),
              Container(
                width: double.infinity,

                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Your Message',
                      isDense: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(9)
                      ),
                    contentPadding: EdgeInsets.symmetric(vertical: 66,horizontal: 11),
                  ),
                ),
              ),
              SizedBox(
                height: 22,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 55,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.indigoAccent
                    ),
                    width: 200,
                    child: MaterialButton(
                      onPressed: (){

                      },
                      child: Text(
                        'Send',
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
            ],
          ),
        ),
      ),
    );
  }
}
