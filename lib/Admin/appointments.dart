import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:itallianappointment/constantcolor.dart';
import 'appbar.dart';
class Appointments extends StatefulWidget {
  @override
  _AppointmentsState createState() => _AppointmentsState();
}
int monthselect=1;
List <String> weekdays=['SUN','MON','TUE','WED','THU','FRI','SAT',];
List <int> numbers=[5,6,7,8,9,10,11,12,12,2];
class _AppointmentsState extends State<Appointments> {
final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: PreferredSize(
            preferredSize: Size.fromHeight(90), // here the desired height
            child: AppBarClass(context,false,'APPUNTAMENTI',_scaffoldKey ),
   ),
   body: Column(
   
     children: <Widget>[
       Container(
         margin: EdgeInsets.only(left: 20,top: 20),
         child: Row(
           children: <Widget>[
             Container(
            alignment: Alignment.center,
             height: MediaQuery.of(context).size.height/25,
            width: MediaQuery.of(context).size.width/10,
               color: orignalbutton,
               child: Text('Feb',
               style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,
               color: Colors.white),),
             ),
             SizedBox(width: 10,),
             Text('2019',
             style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,
               color: Colors.white),)
           ],
         ),
       ),
       Container(
         margin: EdgeInsets.only(top: 25,left: 30),
         height:MediaQuery.of(context).size.height/8 ,
         child: ListView.builder(
           scrollDirection: Axis.horizontal,
           itemCount: 7,
           itemBuilder: (BuildContext context,int index)=>monthlist(index),
         ),
       ),
       Container(
         margin: EdgeInsets.only(top: 20),
         height: MediaQuery.of(context).size.height/2,
         child:
          Column(
            children: <Widget>[
          Container(
width: MediaQuery.of(context).size.width/9,
height: MediaQuery.of(context).size.height/1,
     child:ListView.builder(
                scrollDirection: Axis.vertical,  
                itemCount: 9,
                  itemBuilder: (BuildContext context,int indexd)=>
       timepart(
         indexd==0?'09am':indexd==1?'10am':indexd==2?'11am':indexd==3?'11:30am':indexd==4?'11:30am':
        indexd==5?'09am':indexd==6?'10am':indexd==7?'11am':indexd==8?'11:30am':indexd==9?'11:30am':indexd,
         
         indexd==0?false:indexd==1?false:indexd==2?false:indexd==3?true:
          indexd==4?false:indexd==5?false:indexd==6?true:indexd==7?false:indexd==8?true:indexd==9?false:true,
          indexd,
       ),)
           ),
        Container(
          margin: EdgeInsets.only(left: 10),
        width: MediaQuery.of(context).size.width/1.2,
height: MediaQuery.of(context).size.height,
          child: ListView.builder(
            scrollDirection: Axis.vertical,  
            itemCount: 10,
            itemBuilder: (BuildContext context,int index)=>Row(
              children: <Widget>[
                
                Expanded(
                  child: centerpart(index),
                ),
                  Expanded(
                  child: centerpart(index),
                ),
                
              ],
            )
            
          ),
        )
         ],),
       )
       
       
       ],

   ),
      
    );
  }
    Widget monthlist(index){
    return InkWell(onTap: (){
      setState(() {
        monthselect=index;
      });
    },
    child:Container(
        decoration: BoxDecoration(
        color: index==monthselect?orignalbutton:Colors.transparent,
        borderRadius: BorderRadius.circular(04),
      ),
    child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
        padding: EdgeInsets.only(left: 10,right: 10,),
        alignment: Alignment.center,
        child: Text('${weekdays[index]}',
        style: TextStyle(
          fontSize: 13,
        color: Colors.white,fontWeight: FontWeight.bold
        ),),
    ),
        SizedBox(height: 15,),

          Container(
           
        padding: EdgeInsets.only(left: 10,right: 10,),
        alignment: Alignment.center,
        child: Text('${numbers[index]}',
        style: TextStyle(
          fontSize: 13,
        color: Colors.white,fontWeight: FontWeight.bold
        ),),
    ),
      ],
    ))
  
    );
  }
  Widget timepart(String time,colo,index){
  return Container(
    margin: EdgeInsets.only(top: 45),
      child: 
 Text('$time',
    style: TextStyle(color:colo==true? Colors.red:Colors.white,fontSize: 11,fontWeight: FontWeight.bold),
    ));

  }
Widget centerpart( index,){
  return Container(
    margin: EdgeInsets.only(top:10 ),
    child:Container(
      height: MediaQuery.of(context).size.height/12,
     width: MediaQuery.of(context).size.width/20,
      child:
    
    Row(
      children: <Widget>[
 Container(
 color: Color(0xff5A8B77),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('17',
          style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize:12 ),),
          Text('Feburary',
                    style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize:12 ),),

        ],
      ),
     ),
     
        Container(
          //height: MediaQuery.of(context).size.height,
         width: 92,
          color: orignalbutton,
          alignment: Alignment.centerRight,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Container(
        margin: EdgeInsets.only(right: 07),
            child:  Text('9.00AM',
          style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize:9 ),),
        
          ),
          Container(
           margin: EdgeInsets.only(right: 30),
            child:
 Text('John Doe',
    style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize:12 ),),
 ),
      Container(
        margin: EdgeInsets.only(top: 2,right: 4),
        child: 
         Text('Servizio Nome',
    style: TextStyle(color: Color(0xff669481),fontWeight: FontWeight.bold,fontSize:13),),
      )
 
        ],
      ),
     )
      ],
    )

    )
  );
}
}
  