import 'package:erkinily/screens/Error.dart';
import 'package:erkinily/screens/TryAgain.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl/intl.dart';
class RechargeScreen extends StatefulWidget {
  @override
  State<RechargeScreen> createState() => _RechargeScreenState();
}
void showSnackBar(BuildContext context){

  bool sucess =true;
  final snackBar =SnackBar(
    backgroundColor: Colors.white,
    behavior: SnackBarBehavior.floating,
    action: SnackBarAction(label: 'Dismiss',
      textColor: Colors.indigoAccent,
      onPressed: (){},),
    content : Text(sucess?'Operation Done Sussessfully':'Operation Failed'
    ,style: TextStyle(color: sucess?Colors.indigoAccent:Colors.red),),
  );
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}
class _RechargeScreenState extends State<RechargeScreen> {
  DateTime date =DateTime.now();
  TextEditingController dateController=TextEditingController();
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
          'Recharge',style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 23,
            color: Colors.black
        ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                Text(
                  'amount',style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500
                ),
                ),
              SizedBox(
                height: 13,
              ),
              Container(
                width: 110,
                height: 50,
                child: TextField(
                  keyboardType: TextInputType.number,
                 decoration: InputDecoration(
                   isDense: true,
                   border: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(9)
                   )
                 ),
                ),
              ),
              SizedBox(height: 13,),
              Divider(
                color: Colors.grey,
                height: 5,
                thickness: 1,
              ),
              SizedBox(height: 13,),
              Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Card Number',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black),),
              //  Spacer(),
                  Text('CVV',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black),)
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 200,
                    height: 50,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: 'xxxx xxxx xxx xxxx',
                          isDense: true,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(9)
                          )
                      ),
                    ),
                  ),
                  Container(
                    width: 80,
                    height: 50,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: "xxx",
                          isDense: true,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(9)
                          )
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
                Text(
                  'Expairy date',style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500
                ),
                ),
              SizedBox(
                height: 8,
              ),
              Container(
                // width: double.infinity,



                child:  TextFormField(
                  controller: dateController,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.calendar_month_outlined,size: 25,),
                      isDense: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(9),

                      ),

                  ),
                 //   icon: Icon(Icons.calendar_today_rounded,color: Colors.grey,),
                    //  labelText: 'Enter Date',

                  readOnly: true,
                  onTap: ()async{
                    DateTime? pickedDate =await showDatePicker(context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2000),
                        lastDate: DateTime(2100)
                    );
                    if(pickedDate!=null){
                      String formattedDate=DateFormat("yyyy-MM-dd").format(pickedDate);

                      setState((){
                        dateController.text=formattedDate.toString();
                      });
                    }else{
                      print("Not selected");
                    }
                  },
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                height: 55,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.indigoAccent
                ),
                width: double.infinity,
                child: MaterialButton(
                 onPressed:(){
                   showSnackBar(context);
                 },
                  child: Text(
                    'Recharge now',
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
