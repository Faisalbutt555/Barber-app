import 'package:flutter/material.dart';
import 'package:itallianappointment/Admin/appointments.dart';
import 'package:itallianappointment/Admin/cardclass.dart';
import 'package:itallianappointment/User/addappointment.dart';
import 'package:itallianappointment/User/paymentmethod.dart';
import 'package:itallianappointment/User/userappbar.dart';
import 'package:itallianappointment/approuteclass.dart';
import '../constantcolor.dart';
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
return Scaffold(
  key: _scaffoldKey,
  drawer: UserDrawerPage(context),
    appBar: PreferredSize(
    preferredSize: Size.fromHeight(90), // here the desired height
    child: UserAppBarClass(context,true,'HOME',_scaffoldKey ),
   ),
   body:
   Stack(
     children: <Widget>[
    Column(
     children: <Widget>[
        Container(  
         margin: EdgeInsets.only(top: 10),
         height: 40,
         child: ListView.builder(
           scrollDirection: Axis.horizontal,
           itemCount: 12,
           itemBuilder: (BuildContext context,int index)=>daysuser(index),
         ),
       ),
       InkWell(onTap: (){
         AppRoutes.push(context, Paymentmethod());
       },
       child:Container(
         margin: EdgeInsets.only(top: 10),
         height: MediaQuery.of(context).size.height/2,
        // color: Colors.green,
         child: ListView.builder(
           scrollDirection: Axis.vertical,
           itemCount: 7,
           itemBuilder: (BuildContext context,int index)=>daysuser(index),
         ),
          )   ),
       SizedBox(height: 10,),
       InkWell(onTap: (){
         AppRoutes.push(context, Addappointment());
       },
       child: 
       Cardclass(
         text: 'AGGIUNGI APPUNTAMENTO',
         image: 'images/card2.png',
         size: 3,
       )
       ) 

     ],
   ),
    // Align(
    //     alignment: Alignment.bottomCenter, 
    //      child:   Bottompic(),),
     ],
   )
 
    );
  }
  Widget daysuser(index){
return Card(
  margin: EdgeInsets.only(top: 0),
  child:Container(
    margin: EdgeInsets.only(top: 3),
    height: 50,
    child: Row(
    children: <Widget>[
    Container(
      width: 38,
    child:Text('${weekdays[index]}',
    textAlign: TextAlign.center,
 style: TextStyle(
          fontSize: 14,
          color:orignalbutton,fontWeight: FontWeight.bold
        ),),),
    appointmentscardsuser( 'Appointment',index,Color(0xff000000)),
 SizedBox(width: 1,),
    appointmentscardsuser( 'Appointments',index,Color(0xff000000)),
     SizedBox(width: 1,),
    appointmentscardsuser( 'Appointments',index,Colors.green),
     SizedBox(width: 1,),
   appointmentscardsuser( 'Appointments',index,Color(0xff000000)),
      SizedBox(width: 1,),
   appointmentscardsuser( 'Appointments',index,Color(0xff000000)),
   
    ],
  ),
  )
); 
  }
   Widget appointmentscardsuser(String appoint,index,Color colo){
    return Container(
     // height: MediaQuery.of(context).size.height/2,
     width: MediaQuery.of(context).size.width/5.7,
            color: Color(0xffEFEFEF),
            child: 
           Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Text('${numbers[index]}',
               style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10,
              color:colo ),),
 Row(
   mainAxisAlignment: MainAxisAlignment.center,
   crossAxisAlignment: CrossAxisAlignment.end,
   children: <Widget>[
     
 Text('$appoint',
               style: TextStyle(fontSize: 08,
               fontWeight: FontWeight.bold,
              color: colo),),
              SizedBox(width: 6,),
              Text('0',
                style: TextStyle(fontWeight: FontWeight.bold,fontSize:07,
              color: colo))
 ],) ,           
              Text('__________________',
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 7,
              color: colo),)
            ],
             ),
        );
  }
}