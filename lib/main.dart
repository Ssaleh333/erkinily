import 'package:erkinily/screens/AcountSettings.dart';
import 'package:erkinily/screens/ChangePassword.dart';
import 'package:erkinily/screens/Code_Screen.dart';
import 'package:erkinily/screens/Error.dart';
import 'package:erkinily/screens/Home.dart';
import 'package:erkinily/screens/Login.dart';
import 'package:erkinily/screens/Profile.dart';
import 'package:erkinily/screens/ProfileSetting.dart';
import 'package:erkinily/screens/Recharge.dart';
import 'package:erkinily/screens/Reservation.dart';
import 'package:erkinily/screens/ScannerScreen.dart';
import 'package:erkinily/screens/Sign_up.dart';
import 'package:erkinily/screens/qr_Code.dart';
import 'package:erkinily/screens/return.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'screens/onboard.dart';

void main() {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
// String MyColor = "#3E77F2";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Onboard(),
      debugShowCheckedModeBanner: false,
    );
  }
}


