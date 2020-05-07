import 'package:flutter/material.dart';
import 'package:itallianappointment/Admin/cardclass.dart';
import 'package:itallianappointment/Admin/signupadmin.dart';
import 'package:itallianappointment/bottompicture.dart';
import 'package:itallianappointment/constantcolor.dart';

import 'appbar.dart';
class Utenti extends StatefulWidget {
  @override
  _UtentiState createState() => _UtentiState();
}

class _UtentiState extends State<Utenti> {
      final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(90), 
            child: AppBarClass(context ,false,'UTENTI',_scaffoldKey ),
   ),
   body: Stack(
     children: <Widget>[  
      Column(
  mainAxisAlignment: MainAxisAlignment.start,
       children: <Widget>[
        InkWell(onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Signupadmin()));
        },
        child:    Cardclass(
           image: 'images/card4.png',
           text: 'REGISTERA UTENTA',
           color: Color(0xff183F2D),
           size: 3,
        )),
         SizedBox(height: 20,),
         cardline(),
        SizedBox(height: 7,),
        Container(
          height: MediaQuery.of(context).size.height/2.3,
          child: ListView.builder(
          itemCount: 10,
          itemBuilder: (BuildContext context,int index)=>rejisterlistview(
            index==0?1:index==1?2:index==2?3:index==3?4:index==4?5:index==5?6:index==6?7:8,
            index
            ),
        )
        ),
    ],
     ),
    Align(
        alignment: Alignment.bottomCenter, 
         child:   Bottompic(),),
     ],
     
   ), 
     
    );
  }
  Widget cardline(){
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      elevation: 9,
      child: Container(
        height: MediaQuery.of(context).size.height/16,
              child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Text('S/N',
            style: TextStyle(color: orignalbutton,fontSize: 16,fontWeight: FontWeight.bold),),
            Text('NOME',
             style: TextStyle(color: orignalbutton,fontSize: 16,fontWeight: FontWeight.bold),),
             Text('MODIFICA',
               style: TextStyle(color: orignalbutton,fontSize: 16,fontWeight: FontWeight.bold),),
               Text('ELIMINA',
          style: TextStyle(color: orignalbutton,fontSize: 16,fontWeight: FontWeight.bold),),
          ],
        ),
      )
    );
  }
  Widget rejisterlistview(int numb,int index){
    return Card(
      elevation: 7,
      child: Container(
        height: MediaQuery.of(context).size.height/16,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Text('$numb',
            style: TextStyle(color:Colors.grey,fontSize: 18,fontWeight: FontWeight.bold),),
            Text('John Doe',
             style: TextStyle(color:Color(0xff666666),fontSize: 14,fontWeight: FontWeight.bold),),
InkWell(onTap: (){},
child:Image.asset('images/pencil.png',
            scale: 4,),
       ),
      InkWell(onTap: (){},
      child:Image.asset('images/delete.png',
            scale: 4,)
      )
          ],
        ),
      ),
    );
  }
}