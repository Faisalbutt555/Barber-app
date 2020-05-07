import 'package:flutter/material.dart';
import 'package:itallianappointment/Admin/textfeildclass.dart';
import 'package:itallianappointment/User/home.dart';

import '../bottompicture.dart';
import '../constantcolor.dart';
import '../toppicture.dart';
class UserLogin extends StatefulWidget {
  @override
  _UserLoginState createState() => _UserLoginState();
}

class _UserLoginState extends State<UserLogin> {
    TextEditingController useremail=new TextEditingController();
  TextEditingController userpassword=new TextEditingController();
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      body:SingleChildScrollView(child: Container(
        child: Column(
          children: <Widget>[
              Container(
              height: MediaQuery.of(context).size.height/2.4,
              child: Toppicture(),
            ),
            centerpart()
          ],
        ),
       ) ),
      bottomNavigationBar: Bottompic(),
    );
  }
  Widget centerpart() {
    return 
    Container(
      
      margin: EdgeInsets.only(top: 20),
      height:MediaQuery.of(context).size.height/3,
      width: MediaQuery.of(context).size.width/1.2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 37),
            child:  Text('Accedi',
           style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: accedi),),
                   
          ),
         Inputtextfeild(
                     hinttxt: "Inserisci e-mail",inputType: TextInputType.text,
       controller: useremail,img: "images/mail-black-envelope-symbol.png",
                 size: 3.5,  ),
                         Inputtextfeild(
                     hinttxt: "Inserisci password",inputType: TextInputType.text,
       controller: userpassword,img: "images/padlock.png",
       size: 3.5,
                   ),
            InkWell(
           onTap: (){},
         child:   Container(
            margin: EdgeInsets.only(left: 37),
            child: 
         Text('Forgot Password?',
          style: TextStyle(fontSize: 14,color:accedi,fontWeight: FontWeight.bold),),),
            ),
              Container(
                alignment: Alignment.centerRight,
            margin: EdgeInsets.only(right: 37),
            child: 
        
  RaisedButton(
    padding: EdgeInsets.only(left: 30,right: 30,bottom: 12,top: 10),
    color: orignalbutton,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(7)
    ),
    onPressed: (){
     Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
    },
child: Text('Accedi',
style: TextStyle(fontSize: 18,color:Colors.white),
),

  )
         )

        ]
        )
  
        ) ;
  }
}