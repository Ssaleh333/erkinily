import 'package:erkinily/ScannerScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class qr_Screen extends StatefulWidget {

  @override
  State<qr_Screen> createState() => _qr_ScreenState();
}

class _qr_ScreenState extends State<qr_Screen> {
  String date ="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          color: Colors.white,
          onPressed: (){
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.arrow_back_outlined,
            color: Colors.black,
            size: 25,
          ),
        ),

      ),
        backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Scan',style: TextStyle(color: Colors.indigoAccent,fontSize: 30,fontWeight: FontWeight.w500),
                ),
                SizedBox(width: 8,),
                Text('QR Code',style: TextStyle(fontSize: 30,fontWeight: FontWeight.w500),)
              ],
            ),
            SizedBox(height: 8,),
            Text('position the QR code within the frame',style: TextStyle(fontWeight: FontWeight.w500,color: Colors.grey,fontSize: 15),),
            SizedBox(height: 100,),
            QrImage(data: date,backgroundColor: Colors.white,size: 300,),
            SizedBox(
              height: 55,
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
                  final route=MaterialPageRoute(builder: (context)=>ScannerScreen());
                  Navigator.push(context, route);
                },
                child: Text(
                  'Start Scan',
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
    );
  }
}
