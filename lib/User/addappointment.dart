import 'package:flutter/material.dart';
import 'package:itallianappointment/Admin/textfeildclass.dart';
import 'package:itallianappointment/User/appointmentlist.dart';
import 'package:itallianappointment/User/userappbar.dart';
import 'package:itallianappointment/approuteclass.dart';
import 'package:itallianappointment/bottompicture.dart';
import 'package:itallianappointment/constantcolor.dart';
class Addappointment extends StatefulWidget {
  @override
  _AddappointmentState createState() => _AddappointmentState();
}

class _AddappointmentState extends State<Addappointment> {
final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    key: _scaffoldKey,
    drawer: UserDrawerPage(context),
    appBar: PreferredSize(
    preferredSize: Size.fromHeight(90), // here the desired height
            child: UserAppBarClass(context ,true,'AGGIUNGI APPUNTAMENTO',_scaffoldKey ),
   ),
   body: SingleChildScrollView(
     child: Column(
       mainAxisAlignment: MainAxisAlignment.start,
       children: <Widget>[
         SizedBox(height: 50,),
         Inputtextfeild(
           hinttxt: 'Insersisci nome',
           size: 1,
           img: 'images/man-user.png',
          
         ),
         Container(
           child: Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: <Widget>[
 Container(
           margin: EdgeInsets.only(top: 10),
           width: MediaQuery.of(context).size.width/2.7,
 height: MediaQuery.of(context).size.height/15,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    border: Border.all(color:Colors.grey)
                  ),
           child: Row(
             children: <Widget>[
               InkWell(onTap: (){},
               child: 
                  Container( 
               margin: EdgeInsets.only(left: 10),
                 child:  Image.asset('images/fitcalender.png',
               scale: 1,),
               ),
               ),
             SizedBox(width: 15,),
               Text('Giorno',
               style: TextStyle(fontSize: 16,color:Colors.grey,
               fontWeight: FontWeight.bold),)
             ],
           ),
         ),
         SizedBox(width: 05,),
              Container(
           margin: EdgeInsets.only(top: 10),
           width: MediaQuery.of(context).size.width/2.5,
 height: MediaQuery.of(context).size.height/15,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    border: Border.all(color:Colors.grey)
                  ),
           child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: <Widget>[
              InkWell(
                onTap: (){},
                child: 
                 Container( 
               margin: EdgeInsets.only(left: 10),
                 child:  Image.asset('images/fittime.png',
               scale:1,),
               ),
              ),
              
                 SizedBox(width: 15,),
               Text('Ora',
               style: TextStyle(fontSize: 16,color:Colors.grey,
               fontWeight: FontWeight.bold),)
             ],
           ),
         )
             ],
           ),
         ),
          Container(
           margin: EdgeInsets.only(top: 10),
           width: MediaQuery.of(context).size.width/1.3,
 height: MediaQuery.of(context).size.height/15,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    border: Border.all(color:Colors.grey)
                  ),
           child: Row(

             children: <Widget>[
               InkWell(onTap: (){},
               child: 
                  Container( 
               margin: EdgeInsets.only(left: 20),
                 child:  Image.asset('images/fitservice.png',
               scale: 1,),
               ),
               ),
             SizedBox(width: 15,),
               Text('Seleziona Servizio',
               style: TextStyle(fontSize: 16,color:Colors.grey,
               fontWeight: FontWeight.bold),),
              SizedBox(width: 60,), 
              DropdownButton(  
                          
              ),
             ],
           ),
         ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                          InkWell(onTap: (){
                           // AppRoutes.push(context, Paymentmethod());
                          },
                    child: 
                         Container(
                           
                      margin: EdgeInsets.only(right: 30,top: 30),
                      decoration: BoxDecoration(
                        color: orignalbutton,
                    borderRadius: BorderRadius.circular(7),
                    border: Border.all(color:Colors.grey)
                  ),
width: MediaQuery.of(context).size.width/6,
height: MediaQuery.of(context).size.height/13,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                           Image.asset('images/cross.png',
                    color: Colors.white,
                    scale: 4,),
     Text('Cancella',
     style: TextStyle(color: Color(0xffFFFFFF),fontSize: 12,fontWeight: FontWeight.bold),),
                    
                        ],
                      ),
                         )
                    ),
                    InkWell(onTap: (){
                      AppRoutes.push(context, Appointlist());
                    },
                    child: 
                    Container(
                      margin: EdgeInsets.only(right: 40,top: 30),
                      decoration: BoxDecoration(
                        color: orignalbutton,
                    borderRadius: BorderRadius.circular(7),
                    border: Border.all(color:Colors.grey)
                  ),
width: MediaQuery.of(context).size.width/6,
height: MediaQuery.of(context).size.height/13,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                           Image.asset('images/done-tick.png',
                    color: Colors.white,
                    scale: 4,),
     Text('Confirma',
     style: TextStyle(color: Color(0xffFFFFFF),fontSize: 12,fontWeight: FontWeight.bold),),
                    
                        ],
                      ),
                    )
                    )
                  ],
                ),
        


       ],
     ),
   ),
      bottomNavigationBar: Bottompic(),
    );
  }
}