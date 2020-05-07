import 'package:flutter/material.dart';
class Cardclass extends StatelessWidget {
   Cardclass({
    this.image,
    this.text,
    this.color,
    this.size
  });
final String image;
 final String text;
 final Color color;
 final double size;
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(left: 25,right: 20,top: 10),
      elevation: 9,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
      child: Container(
        height: MediaQuery.of(context).size.height/6.5,
child: Row(
  children: <Widget>[
    Expanded(
      flex: 1,
          child: Container(
            margin: EdgeInsets.only(right  : 05),
            alignment: Alignment.centerRight,
                      child: Image.asset('$image',
      scale: size,),
          ),
    ),
  Expanded(
    flex: 2,
      child: Container(
        margin: EdgeInsets.only(left: 10),
        alignment: Alignment.centerLeft,
              child: Text('$text',
    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Color(0xff183F2D)),),
      ),
  )
  ],
),
      ),
    );
  }
}