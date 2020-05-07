import 'package:flutter/material.dart';
import 'package:itallianappointment/Admin/textfeildclass.dart';
import 'package:itallianappointment/bottompicture.dart';
import 'package:itallianappointment/constantcolor.dart';

import 'appbar.dart';

class Addservices extends StatefulWidget {
  @override
  _AddservicesState createState() => _AddservicesState();
}

class _AddservicesState extends State<Addservices> {
 final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(90), // here the desired height
            child: AppBarClass(context,false,'AGGIUNGI SERVIZIO',_scaffoldKey ),
   ),

body:SingleChildScrollView(
  child: 
 Column(  
   mainAxisAlignment: MainAxisAlignment.center,
children: <Widget>[
Container(
  margin: EdgeInsets.only(left: 40,
  top: 30),
  alignment: Alignment.centerLeft,
  child: Text('NOME',
style: TextStyle(color: orignalbutton,fontSize: 16,fontWeight: FontWeight.bold),
textAlign: TextAlign.left
),),
SizedBox(height: 3,),
Inputtextfeild(
hinttxt: '  Name Servizio',  
),
Container(
  margin: EdgeInsets.only(left: 50,top: 20),
  alignment: Alignment.centerLeft,
  child:
Text('DESCRIZIONE',
style: TextStyle(color: orignalbutton,fontSize: 16,fontWeight: FontWeight.bold),
),),
Container(
  margin:  EdgeInsets.only(left: 20,top: 5),
  padding: EdgeInsets.all(13.0),
  decoration: BoxDecoration(
    border: Border.all(color: Colors.grey),
    borderRadius: BorderRadius.only(
      topLeft:Radius.circular(10),
       topRight:Radius.circular(10),
       bottomLeft: Radius.circular(10),
       bottomRight: Radius.circular(10)
      )
  ),

  height: MediaQuery.of(context).size.height/3.5,
  width: MediaQuery.of(context).size.width/1.2,
  child: Text('Scrivi qualcosa...',
  style: TextStyle(color: Colors.grey),),
),
Container(
  margin: EdgeInsets.only(top: 20,right: 50),
  alignment: Alignment.centerRight,
  child: RaisedButton(onPressed: (){},
color: orignalbutton,
padding: EdgeInsets.only(left: 40,right: 40),
child: Text('Salve',
style: TextStyle(color: Color(0xffFFFFFF),fontSize: 16,fontWeight: FontWeight.bold),),
shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),)
,)


  ],
),
),
     bottomNavigationBar: Bottompic(), 
    );
  }


}