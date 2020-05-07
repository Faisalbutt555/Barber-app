import 'package:flutter/material.dart';
class Bottompic extends StatefulWidget {
  @override
  _BottompicState createState() => _BottompicState();
}


class _BottompicState extends State<Bottompic> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height/4.4,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/bottompicture.png',
          ))
      ),
  
    );
  }

}