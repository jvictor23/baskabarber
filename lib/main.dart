import 'package:baskabarber/Pages/Home_Page/Home_Page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.light,
  ));

  runApp(MaterialApp(
    home: HomePage(),
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
        scaffoldBackgroundColor: Color(0xff4e6fe3),
        primaryColor: Color(0xff4e6fe3),
        buttonColor: Color(0xff69b0f1),
        accentColor: Color(0xffc4c4c4),
        brightness: Brightness.light),
  ));
}
