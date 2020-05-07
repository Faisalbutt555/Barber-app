import 'package:flutter/material.dart';
class Inputtextfeild extends StatelessWidget {
  Inputtextfeild({
    this.hinttxt,
    this.img,
    this.size,
    this.inputType,
    this.controller,}
  );
 final String hinttxt;
  final String img;
  final double size;
  final TextInputType inputType;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return  Container(
      height: MediaQuery.of(context).size.height/20,
      width: MediaQuery.of(context).size.width/.3,
      margin: EdgeInsets.only(left: 40,right: 40,),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    border: Border.all(color:Colors.black)
                  ),
                  child: 
                  TextField(
                    keyboardType: inputType,
                    controller: controller,
                    
                  textAlign: TextAlign.start,
                    decoration: InputDecoration(
                      border:OutlineInputBorder(
                       borderSide: BorderSide.none   
                      ),
                      hintText: '$hinttxt',
                       hintStyle: TextStyle(color:Colors.grey),
                      prefixIcon: IconButton(onPressed: (){},
                      icon: Image.asset('$img',
                      scale: size,)
                    
                      ),
                    contentPadding: EdgeInsets.only(bottom: 9),
                    ),
                  ),
                );
  }
}