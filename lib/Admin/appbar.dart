
import 'package:flutter/material.dart';
import 'package:itallianappointment/Admin/home.dart';
import 'package:itallianappointment/Admin/signupadmin.dart';
import 'package:itallianappointment/approuteclass.dart';
import 'package:itallianappointment/loginmainscreen.dart';

import 'addservices.dart';
import 'appointmenthistory.dart';
import 'myappointments.dart';

class AppBarClass extends PreferredSize {
 AppBarClass(BuildContext context,leading,heading, keyScaf,)
     : super(
           preferredSize: Size.fromHeight(0),
          child: Container(
             decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                'images/appbar.png',    
              ),
              fit: BoxFit.cover)
              ),
             child: 
             Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             crossAxisAlignment: CrossAxisAlignment.center,
             children: <Widget>[
              leading? Container(margin: EdgeInsets.only(left: 10,top: 30),
                child: 
              InkWell(
                 onTap: (){
                  
                    keyScaf.currentState.openDrawer();
                 },
                 child: 
                 Image.asset('images/drawer.png',
                 scale: 4,),
              )):IconButton(onPressed: (){
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back,
              color: Colors.white,),),
              Container(
                margin: EdgeInsets.only(right: 50,top: 60),
                child:  Text('$heading',
               style: TextStyle(color: Color(0xffFFFFFF),fontSize: 22,fontWeight: FontWeight.bold),),
               ), Container()
            

                ],
             ),
           )
           );
}
class DrawerPage extends PreferredSize {
 DrawerPage(BuildContext context)
     : super(
           preferredSize: Size.fromHeight(0),
           child: Container(
               height: MediaQuery.of(context).size.height,
               width: MediaQuery.of(context).size.width * .7,
               color: Color(0xffFFFFFF),
               child: Container(
                   child: Column(
                 children: <Widget>[
                   Container(
                     height: 180,
                     width: MediaQuery.of(context).size.width/01,
                   decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/appbarinside.png',
                  ),
                    fit: BoxFit.fill),
                    
                    ) ,
                 
               ),
               SizedBox(height: 20,),
              Container(
                height: MediaQuery.of(context).size.height/17,
                child:    ListTile(
                 leading: Image.asset("images/drawerhome.png",scale: 3,) ,
                 title: Text("Home",
                 style: TextStyle(fontSize: 16,color: Color(0xff000000),fontWeight: FontWeight.bold),) ,
                 onTap: (){
                   AppRoutes.push(context, Homeadmin());                   
                 },
               )
              ),
               Container(
                height: MediaQuery.of(context).size.height/17,
                child:  
            
                  ListTile(
                 leading: Image.asset("images/plus.png",scale: 3,) ,
                 title: Text("Aggiungui Servizio",
                 style: TextStyle(fontSize: 16,color: Color(0xff000000),fontWeight: FontWeight.bold),) ,

                 onTap: (){
                AppRoutes.push(context, Addservices());                   
                 },
               ),),
                Container(
                height: MediaQuery.of(context).size.height/17,
                child:
                  ListTile(
                 leading: Image.asset("images/clock1.png",scale: 3,) ,
                 title: Text("il mio apputamento",
                  style: TextStyle(fontSize: 16,color: Color(0xff000000),fontWeight: FontWeight.bold),) ,
                 onTap: (){
                 AppRoutes.push(context, Myappointments());                   
                 },
                   )   ),
                    Container(
                height: MediaQuery.of(context).size.height/17,
                child:
                   ListTile(
                 leading: Image.asset("images/card4.png",scale: 5,) ,
                 title: Text("Registera Utenta",
                 style: TextStyle(fontSize: 16,color: Color(0xff000000),fontWeight: FontWeight.bold),) ,
                 onTap: (){
                 AppRoutes.push(context, Signupadmin());                   
                 },
                    )),
                Container(
                height: MediaQuery.of(context).size.height/17,
                child:
                ListTile(
                 leading: Image.asset('images/clock2.png',scale: 3,) ,
                 title: Text("Appointmento Storico",
              style: TextStyle(fontSize: 16,color: Color(0xff000000),fontWeight: FontWeight.bold),) ,

                 onTap: (){
                AppRoutes.push(context, History());                   
                 },
                )),
                  ListTile(
                 leading: Image.asset('images/sign-out-option.png',scale: 3,) ,
                 title: Text("Esci",
                 style: TextStyle(fontSize: 16,color: Color(0xff000000),fontWeight: FontWeight.bold),) ,
                 onTap: (){
                 AppRoutes.push(context, Loginmainscreen());                   
                 },
               ),
               
               





               
    
               
                   ],
                 ),
               )
               )
               
               );
}
