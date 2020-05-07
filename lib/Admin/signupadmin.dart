import 'package:flutter/material.dart';
import 'package:itallianappointment/Admin/textfeildclass.dart';
import 'package:itallianappointment/bottompicture.dart';
import '../constantcolor.dart';
import 'appbar.dart';
import 'myappointments.dart';
class Signupadmin extends StatefulWidget {
  @override
  _SignupadminState createState() => _SignupadminState();
}

class _SignupadminState extends State<Signupadmin> {
  TextEditingController name=new TextEditingController();
  TextEditingController  number=new TextEditingController();
  TextEditingController email=new TextEditingController();
  TextEditingController password=new TextEditingController();

    final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(90), // here the desired height
            child: AppBarClass(context,false,'REJISTRA UTENTA',_scaffoldKey ),
   ),
   body:SingleChildScrollView(
        child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         crossAxisAlignment: CrossAxisAlignment.center,
         children: <Widget>[
           SizedBox(height: 30,),
             Inputtextfeild(
               size: 3.8,
            hinttxt: "Nome",inputType: TextInputType.text,
           controller: name,img: "images/man-user.png", 
           
          
         ),
        SizedBox(height: 10,),
            Inputtextfeild(
               size: 3.8,
            hinttxt: "Numero",inputType: TextInputType.text,
           controller: number,img: "images/mobile.png",
         ),
         SizedBox(height: 10,),
           
            Inputtextfeild(
               size: 3.8,
            hinttxt: "E-Mail",inputType: TextInputType.text,
           controller: email,img: "images/mail-black-envelope-symbol.png",
         ),
           SizedBox(height: 10,),
            Inputtextfeild(
               size: 3.8,
            hinttxt: "Password",inputType: TextInputType.text,
           controller: password,img: "images/padlock.png",
         ),
         SizedBox(height: 30,),
           RaisedButton(
      padding: EdgeInsets.only(left: 60,right: 60,bottom: 15,top: 10),
      color: orignalbutton,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(7)
      ),
      onPressed: (){
     Navigator.push(context, MaterialPageRoute(builder: (context)=>Myappointments()));
      },
child: Text('Registera Utente',
style: TextStyle(fontSize: 18,color:Colors.white),
),

     )
         ],
       ),
   )
     
     
   ,
   bottomNavigationBar: Bottompic(),   
    );
  }
  
}

class MyAppointments {
}