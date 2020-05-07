import 'package:flutter/material.dart';
import 'package:itallianappointment/constantcolor.dart';
import 'package:table_calendar/table_calendar.dart';

import 'appbar.dart';
class Myappointments extends StatefulWidget {
  @override
  _MyappointmentsState createState() => _MyappointmentsState();
}

class _MyappointmentsState extends State<Myappointments> {
      final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
CalendarController calendarControl;
 @override
  void initState() {
    super.initState();
    calendarControl=new CalendarController();
  }
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(90), // here the desired height
            child: AppBarClass(context,false,'IL MIO APPUNTAAMENTU',_scaffoldKey ),
   ),
   body: 
   Column(
              children: <Widget>[

                Container(
                  height: MediaQuery.of(context).size.height/1.8,
                  child: TableCalendar(
              calendarStyle: CalendarStyle(
            selectedColor: orignalbutton,    
                todayColor: orignalbutton,
                todayStyle: TextStyle(fontWeight: FontWeight.bold,
                fontSize: 10,
                color: Colors.white)
              ),
             
              headerStyle: HeaderStyle(
                headerPadding: EdgeInsets.only(left: 10,right: 10),
             // leftChevronIcon: Icon(Icons.keyboard_arrow_down,),
              //rightChevronIcon:  Icon(Icons.keyboard_arrow_down,),
                centerHeaderTitle: false,
              formatButtonVisible: false,
              headerMargin: EdgeInsets.only(left: 60,right: 60)
),

              calendarController: calendarControl,)
                ),
               
                Container(
                  margin: EdgeInsets.only(top: 10,left: 10,right: 10),
                  height: 20,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('Appuntamenti',
                      style: TextStyle(fontSize: 16,color: Color(0xff666666),fontWeight: FontWeight.bold),)
                  ,  Text('9 Februray',
                      style: TextStyle(fontSize: 16,color: Color(0xff666666),fontWeight: FontWeight.bold),)
                   
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                
                Expanded(child:ListView.builder(
                
                scrollDirection: Axis.vertical,  
                itemCount: 6,
                  itemBuilder: (BuildContext context,int indexd)=>Row(
mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Expanded(child:centercard()),
                     Expanded(child:centercard()),
                    ],
                  )
                  )
                  )
              
              ],
            )
            
         

    
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
            Text('09',
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

          Text('Servizioe Name',
          style: TextStyle(fontSize: 11,color: Color(0xff707070),fontWeight: FontWeight.bold),),
            ],),
        
         
        ],
      ))
  
  ],
),
  );
}
}      