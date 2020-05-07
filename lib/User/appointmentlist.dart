import 'package:flutter/material.dart';
import 'package:itallianappointment/User/userappbar.dart';
import 'package:itallianappointment/bottompicture.dart';
import 'package:itallianappointment/constantcolor.dart';
class Appointlist extends StatefulWidget {
  @override
  _AppointlistState createState() => _AppointlistState();
}

class _AppointlistState extends State<Appointlist> {
 final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
  appBar: PreferredSize(
  preferredSize: Size.fromHeight(90), // here the desired height
  child: UserAppBarClass(context ,false,'LISTA APPUNTAMENTI',_scaffoldKey ),
   ),
      body: Column(
        children: <Widget>[
                Container(
         margin: EdgeInsets.only(left: 10,right: 10,top: 30),
         height: 40,
         child: Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: <Widget>[
             Text(' 15 February',
             style: TextStyle(fontSize: 16,color: orignalbutton,fontWeight: FontWeight.bold),),
             Text('Appuntamenti',
            style: TextStyle(fontSize: 16,color:orignalbutton,fontWeight: FontWeight.bold),),
           ],
         ),
       ),
       Container(
         height: MediaQuery.of(context).size.height/4.5,
         margin: EdgeInsets.only(top: 6),
         child: 
     ListView.builder(
          scrollDirection: Axis.vertical,  
           itemCount: 6,
                  itemBuilder: (BuildContext context,int indexd)=>Row(
mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Expanded(child:centercard()),
                     Expanded(child:centercard()),
                    ],
                  )
                
        ) )  ],
      ),
      bottomNavigationBar: Bottompic(),
    );
  }
   Widget centercard(){
 
  return Card(
//margin: EdgeInsets.only(left: 10,right: 10),
   child: Row(
  children: <Widget>[
   Container(
     height: 70,
       color: Color(0xffE5ECED),
        child: Column(
        mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('10',
            style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Color(0xff183F2D)),),
            Text('Februray',
                        style: TextStyle(fontSize: 14,color: Color(0xff183F2D)),),
          ],
        )
      ),
      Expanded(child: Column(
        children: <Widget>[
           Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
Text('11:30 AM',
  style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: Color(0xff183F2D)),),

            ],),
            Column(
              children: <Widget>[
Text('John Doe',
                     style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Color(0xff183F2D)),),

          Text('Servizio Name',
          style: TextStyle(fontSize: 13,color: Color(0xff273D52),fontWeight: FontWeight.bold),),
            ],),
        
         
        ],
      ))
  
  ],
),
  );
}
}