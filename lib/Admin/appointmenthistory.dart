import 'package:flutter/material.dart';
import 'package:itallianappointment/bottompicture.dart';
import 'package:itallianappointment/constantcolor.dart';

import 'appbar.dart';
class History extends StatefulWidget {
  @override
  _HistoryState createState() => _HistoryState();
}

class _HistoryState extends State<History> {
 final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: PreferredSize(
            preferredSize: Size.fromHeight(90), // here the desired height
            child: AppBarClass(context,false,'STORICO',_scaffoldKey ),
   ),
body:SingleChildScrollView(child: 
 Column(
  children: <Widget>[
Container(
  alignment: Alignment.centerRight,
  margin: EdgeInsets.only(top: 20,left: 20),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: <Widget>[
      Container(
        child: Row(
          children: <Widget>[
 Text('FEB',
  style: TextStyle(color: orignalbutton,fontSize: 16,fontWeight: FontWeight.bold),),
  Icon(Icons.keyboard_arrow_down),
          ],
        )
      ),
 Container(
   child: Row(
     children: <Widget>[
 Text('2018',
  style: TextStyle(color: orignalbutton,fontSize: 16,fontWeight: FontWeight.bold),),
  Icon(Icons.keyboard_arrow_down)
     ],
   ),
 )
   
  ],
  )

),
Container(
  margin: EdgeInsets.only(left: 10,
  top: 10),
  alignment: Alignment.centerLeft,
  child: Text('Storico',
style: TextStyle(fontWeight: FontWeight.bold,color: Color(0xff666666),fontSize: 16),),
   ),
   SizedBox(height: 10,),
   Container(
     height: MediaQuery.of(context).size.height/2.3,
     child:ListView.builder(
                scrollDirection: Axis.vertical,  
                itemCount: 4,
                  itemBuilder: (BuildContext context,int indexd)=>Row(
mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Expanded(child:centercardhistory(
                        indexd==0?09:indexd==1?07:indexd==2?06:indexd==3?05:indexd==4?06:indexd=05,
                        indexd==0?'11:30AM':indexd==1?'01:30 PM':indexd==2?'11:30AM':indexd==3?'01:30PM':indexd==4?'01:30 PM':indexd=05,
indexd,
                      )),
                     Expanded(child:centercardhistory(
 indexd==0?8:indexd==1?06:indexd==2?06:indexd==3?06:indexd==4?05:indexd=05,
                        indexd==0?'11:30AM':indexd==1?'01:30 PM':indexd==2?'11:3AM':indexd==3?'01:30PM':indexd==4?'01:30 PM':indexd=05,
indexd,
                     )),
                    ],
                  )
                  )
                  )
  ],
),
),
bottomNavigationBar: Bottompic(),
      
    );
  }
    Widget centercardhistory(int date,String time,index){
 
  return Card(
   child: Row(
  children: <Widget>[
   Container(
     height: 70,
       color: Color(0xffE5ECED),
        child: Column(
        mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('$date',
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
Text('$time',
  style: TextStyle(fontSize: 10,color: Color(0xff183F2D)),),

            ],),
            Container(
              margin: EdgeInsets.only(left: 12),
              child: 
            
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
Text('John Doe',
  style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold,color: Color(0xff183F2D)),),
          Text('Servizio Name',
          style: TextStyle(fontSize: 12,color: Color(0xff707070),fontWeight: FontWeight.bold),),
         Container(
           margin: EdgeInsets.only(right: 7,left: 0),
           child: 
         Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text('Cash',
                              style: TextStyle(fontSize: 12,color: Color(0xff183F2D),fontWeight: FontWeight.bold),
),
              Text('\$25',
                style: TextStyle(fontSize: 18,color: Color(0xff183F2D)),
              )

            ],
          )
              )  ],),)
        
         
        ],
      ))
  
  ],
),
  );
}
}