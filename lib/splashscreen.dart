
import 'package:flutter/material.dart';
import 'dart:async';

import 'package:itallianappointment/loginmainscreen.dart';
class SplashScreen extends StatefulWidget {
  @override
  _SecondscreenState createState() => _SecondscreenState();
}

class _SecondscreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    loadData();
  }

  Future<Timer> loadData() async {
    return Timer(Duration(seconds: 4), onloadingData);
  }

  onloadingData() async {
     Navigator.of(context)
    .pushReplacement(MaterialPageRoute(builder: (context) => Loginmainscreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/Splash.png'),
                    fit: BoxFit.cover)),
         
            ));
  }
}
