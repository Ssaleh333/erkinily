import 'package:flutter/material.dart';

class Terms extends StatelessWidget {


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
          'Terms & Conditions',style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 23,
            color: Colors.black
        ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text('hshcbdjvkdfvgfbhdvbnvbcbxvufvhfsvhdbcdsbancbvbfgvfjvkfgyhjkldskbajhdbjfsabfvubwoeddmcnfjmnfbv cmxkjhdgfhdfjrnbfjhsgdf',style: TextStyle(
                color: Colors.grey
            ),)
          ],
        ),
      ),
    );
  }
}
