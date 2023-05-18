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
    text: "Your Car Home",
    desc: "you can park your car with safe place",
    bg: Colors.white,
    button: Colors.indigoAccent,
  ),
  OnboardModel(
    img: 'assets/images/pp-p.png',
    text: "Any Time",
    desc: "you can park your car as you want safely",
    bg: Colors.white,
    button: Colors.indigoAccent,
  ),
  OnboardModel(
    img: 'assets/images/gg-g.png',
    text: "Your Car Home",
    desc: "Now you can park your car with safe place",
    bg: Colors.white,
    button: Colors.indigoAccent,
  ),
];