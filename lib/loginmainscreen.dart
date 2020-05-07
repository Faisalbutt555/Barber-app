import 'package:flutter/material.dart';
import 'package:itallianappointment/Admin/loginfirst.dart';
import 'package:itallianappointment/User/userlogin.dart';
import 'package:itallianappointment/constantcolor.dart';
import 'package:itallianappointment/toppicture.dart';

import 'bottompicture.dart';
class Loginmainscreen extends StatefulWidget {
  @override
  _LoginmainscreenState createState() => _LoginmainscreenState();
}

class _LoginmainscreenState extends State<Loginmainscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height/2.4,
              width: MediaQuery.of(context).size.width,
              child: Toppicture(),
            ),
          
            Container(
              height: MediaQuery.of(context).size.height/3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
  InkWell(
            onTap: (){
              Navigator.push(context,   MaterialPageRoute(builder: (context)=>AdminLogin()));
            },
            child: centerpart('ADMIN'),
            ),
           InkWell(
            onTap: (){
              Navigator.push(context,   MaterialPageRoute(builder: (context)=>UserLogin()));
            },
            child: centerpart('UTENTE'),
            ),
                ],
              ),
            )
          
            
          ],
        ),
      ),
      bottomNavigationBar: Bottompic(),
    );
  }
  Widget centerpart(String txt){
    return Card(color: orignalbutton,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
      child: Container(
        height: 60,
        width: 200,
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('$txt',
        style: TextStyle(fontSize: 18,color: buttontext,fontWeight: FontWeight.bold),)
       
          ],
        )
         
      )
    );
  }
  

}