import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Constants {
  static const String apiKey = "ce0e6c4f";
  static const String baseUrl = "https://www.omdbapi.com/";

  static const TextStyle homeHeadingTextStyle = TextStyle(
    color: Colors.white,
    fontSize: 30,
    fontFamily: "SF-Pro-Text",
  );

  static const List<String> homePageFirstListView = [
    "Insomnia",
    "Depression",
    "Baby Sleep",
  ];

  static const List<String> homePageSecondListImage = [
    "assets/pics/background1.png",
    "assets/pics/backgroun2.png",
  ];

  static const List<String> homePageThirdListImage = [
    "assets/pics/background1.png",
    "assets/pics/backgroun2.png",
    "assets/pics/background1.png",
    "assets/pics/backgroun2.png",
  ];

  static const List<String> homePageThirdListContent = [
    "Calming Sounds",
    "Insomnia",
    "For Children",
    "Tips for Children",
  ];

  static const List<String> homePageThirdListIcons = [
    "assets/icons/headphone.svg",
    "assets/icons/tape.svg",
    "assets/icons/headphone.svg",
    "assets/icons/tape.svg",
  ];
}
