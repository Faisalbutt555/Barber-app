import 'package:flutter/material.dart';
import 'package:itallianappointment/Admin/appointmenthistory.dart';
import 'package:itallianappointment/Admin/cardclass.dart';
import 'package:itallianappointment/Admin/uttenti.dart';
import 'package:itallianappointment/approuteclass.dart';
import 'package:itallianappointment/bottompicture.dart';
import 'package:itallianappointment/constantcolor.dart';
import 'appbar.dart';
import 'appointments.dart';
class Homeadmin extends StatefulWidget {
  @override
  _HomeadminState createState() => _HomeadminState();
}

class _HomeadminState extends State<Homeadmin> {
    final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       key: _scaffoldKey,
        drawer: DrawerPage(context),
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(90), // here the desired height
            child: AppBarClass(context ,true,'HOME',_scaffoldKey ),
   ),
   body: Column(
     crossAxisAlignment: CrossAxisAlignment.center,
     mainAxisAlignment: MainAxisAlignment.center,
       children: <Widget>[

   InkWell(onTap: (){
AppRoutes.push(context, Utenti());   
},
   child:Container(

     child:Cardclass(
      image:  'images/card1.png',text:'UTENTI',color:orignalbutton,size:3.5),
     )  ,  
   ), 
        InkWell(onTap: (){
AppRoutes.push(context, Appointments());   
},
   child:Container(
     child:Cardclass(
       
             image:  'images/card2.png',text:'APPUNTAAMENTI',color:orignalbutton,size:3.5),
      )),
      
       InkWell(onTap: (){
AppRoutes.push(context, History());   
},
   child:Container(
     child:Cardclass(
      image:  'images/card3.png',text:'STORICO APPUNTAAMENTI',color:orignalbutton,size:3.5),
   )),  
     
       ],
     ),
   
    bottomNavigationBar: Bottompic(),  
    );
  }
 
}