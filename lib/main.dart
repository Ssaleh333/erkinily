import 'package:erkinily/AcountSettings.dart';
import 'package:erkinily/ChangePassword.dart';
import 'package:erkinily/Code_Screen.dart';
import 'package:erkinily/Error.dart';
import 'package:erkinily/History_Screen.dart';
import 'package:erkinily/Home.dart';
import 'package:erkinily/Login.dart';
import 'package:erkinily/Profile.dart';
import 'package:erkinily/ProfileSetting.dart';
import 'package:erkinily/Recharge.dart';
import 'package:erkinily/ScannerScreen.dart';
import 'package:erkinily/Sign_up.dart';
import 'package:erkinily/qr_Code.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'onboard.dart';

void main() {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Login_Screen(),
      debugShowCheckedModeBanner: false,
    );
  }}


