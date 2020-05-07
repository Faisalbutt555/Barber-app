import 'package:flutter/material.dart';
class Toppicture extends StatefulWidget {
  @override
  _ToppictureState createState() => _ToppictureState();
}

class _ToppictureState extends State<Toppicture> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height/4,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/toppicture.png',
          
      ))
      ),
      
    );
  }
}