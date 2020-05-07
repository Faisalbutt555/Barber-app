import 'package:flutter/material.dart';
import 'package:itallianappointment/loginmainscreen.dart';
import 'package:itallianappointment/splashscreen.dart';
void main() => runApp(MaterialApp(
        home: SplashScreen(),
        debugShowCheckedModeBanner: false,

));

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Loginmainscreen();
    
  }
}