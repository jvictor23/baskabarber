
import 'package:baskabarber/Pages/Register_Page/register_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {

 SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Color(0xff4e6fe3),
    statusBarIconBrightness: Brightness.light,
  ));

  runApp(
    MaterialApp(
      home: RegisterPage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xff4e6fe3),
        primaryColor: Color(0xff4e6fe3),
        buttonColor: Color(0xff69b0f1),
        accentColor: Color(0xffc4c4c4),
        brightness: Brightness.light
      ),
    )
  );

}

