import 'package:flutter/material.dart';
import 'package:itallianappointment/User/userappbar.dart';
import 'package:itallianappointment/bottompicture.dart';
import 'package:itallianappointment/constantcolor.dart';
class Paymentmethod extends StatefulWidget {
  @override
  _PaymentmethodState createState() => _PaymentmethodState();
}

class _PaymentmethodState extends State<Paymentmethod> {
  int radiobuttonselect=1;
  TextEditingController amount=new TextEditingController();
   final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    var scaffold = Scaffold(
       appBar: PreferredSize(
  preferredSize: Size.fromHeight(90), // here the desired height
  child: UserAppBarClass(context ,false,'METODO PAGAMENTO',_scaffoldKey ),
   ),
   body:SingleChildScrollView(
     child: 
    Column(
     children: <Widget>[
       Container(
         
         decoration: BoxDecoration(
        color: Color(0xffF5F5F5),
           borderRadius: BorderRadius.only(
             bottomLeft: Radius.circular(12),
                 bottomRight: Radius.circular(12),
                     topRight: Radius.circular(12),
                        topLeft: Radius.circular(12)
           )
         ),
           margin: EdgeInsets.only(left: 30,top: 20),
           height: MediaQuery.of(context).size.height/3.2,
             width: MediaQuery.of(context).size.width/1.2,
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: <Widget>[
                 Container(
                margin: EdgeInsets.only(left: 20,top: 20),
                   child:  Text(' Metodo pagamento',
                   style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.black),)
                 ),
                Row(
                  children: <Widget>[
                        Radio(
                          value: 1,
                          groupValue: radiobuttonselect,
                          onChanged: (T){
                            print(T);
                            setState(() {
                              radiobuttonselect=T;
                            });
                          },
                        ),
                        Text(' Metodo pagamento 1',
                   style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.grey),)
                 

                ],),
                 

                            Container(
                   margin: EdgeInsets.only(left: 20,right: 20),
                   child: 
                 Text('________________________________________',
                 style: TextStyle(color: Colors.grey
                 ),),
                     ),
                     Row(
                       children: <Widget>[
   Radio(
                          value: 2,
                          groupValue: radiobuttonselect,
                          onChanged: (F){
                            print(F);
                            setState(() {
                              radiobuttonselect=F;
                            });
                          },
                        ),
 Text(' Metodo pagamento 2',
                   style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.grey),)
                 
                       ],
                     ),
                     
                                  Container(
                   margin: EdgeInsets.only(left: 20,right: 20),
                   child: 
                 Text('________________________________________',
                   style: TextStyle(color: Colors.grey
                 ),
                 ),
                     ),
               ],
             ),
         ),
         SizedBox(height: 4,),
                    Container(
           margin: EdgeInsets.only(top: 07,left: 30),
           width: MediaQuery.of(context).size.width/1.4,
 height: MediaQuery.of(context).size.height/15,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    border: Border.all(color:Colors.grey)
                  ),
           child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceAround,
             children: <Widget>[          
                 SizedBox(width: 15,),
               Text('Importo',
               style: TextStyle(fontSize: 16,color:orignalbutton,
               fontWeight: FontWeight.bold),),
               
               Container(
                 width: MediaQuery.of(context).size.width/3,
        color: Color(0xffF5F5F5),
                 child: TextFormField(
                   autofocus: false,
                   controller: amount,
                   keyboardType: TextInputType.number,
                   decoration: InputDecoration(
 border:OutlineInputBorder(
                       borderSide: BorderSide.none   
                      ),
                   ),
                 ),
               )
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
                      margin: EdgeInsets.only(right: 20,top: 10),
                      decoration: BoxDecoration(
                        color: orignalbutton,
                    borderRadius: BorderRadius.circular(7),
                    border: Border.all(color:Colors.grey)
                  ),
width: MediaQuery.of(context).size.width/7,
height: MediaQuery.of(context).size.height/14,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                           Image.asset('images/rubbish-bin-delete-button.png',
                           
                    color: Colors.white,
                    scale: 3.5,),
     Text('Elimina',
     style: TextStyle(color: Color(0xffFFFFFF),fontSize: 12,fontWeight: FontWeight.bold),),
                    
                        ],
                      ),
                         )
                    ),
                    InkWell(onTap: (){
                   //   AppRoutes.push(context, Appointlist());
                    },
                    child: 
                    Container(
                      margin: EdgeInsets.only(right: 20,top: 10),
                      decoration: BoxDecoration(
                        color: orignalbutton,
                    borderRadius: BorderRadius.circular(7),
                    border: Border.all(color:Colors.grey)
                  ),
width: MediaQuery.of(context).size.width/7,
height: MediaQuery.of(context).size.height/14.5,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                           Image.asset('images/cross.png',
                    color: Colors.white,
                    scale: 3.5,),
     Text('Cancella',
     style: TextStyle(color: Color(0xffFFFFFF),fontSize: 12,fontWeight: FontWeight.bold),),
                    
                        ],
                      ),
                    )
                    )
                  ],
                ),
       
     ],
    )
   ),
   bottomNavigationBar: Bottompic(),
    );
  
    return scaffold;
  }
}