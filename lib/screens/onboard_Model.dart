import 'package:flutter/material.dart';
class OnboardModel{
  String img;
  String text;
  String desc;
  Color bg;
  Color button;

OnboardModel({
    required this.img,
  required this.text,
  required this.desc,
  required this.button,
  required this.bg,
});
}
List<OnboardModel>screens=<OnboardModel>[
  OnboardModel(
    img: 'assets/images/ss-s.png',
    text: "Fully Automated",
    desc: "Your car will reach its parking spot safely without any human intervention",
    bg: Colors.white,
    button: Colors.indigoAccent,
  ),
  OnboardModel(
    img: 'assets/images/pp-p.png',
    text: "Easy",
    desc: "Everything can done using your phone with no inputs only scanning a qr code",
    bg: Colors.white,
    button: Colors.indigoAccent,
  ),
  OnboardModel(
    img: 'assets/images/gg-g.png',
    text: "Security",
    desc: "your car is isolated inside its parking spot, no thing can reach it",
    bg: Colors.white,
    button: Colors.indigoAccent,
  ),
];