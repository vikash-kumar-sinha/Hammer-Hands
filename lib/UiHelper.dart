import 'package:flutter/material.dart';
import 'dart:ui';



TextStyle main_heading=TextStyle(fontFamily:'acme',fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black87);
TextStyle second_heading=TextStyle(fontFamily: 'heebo',fontWeight: FontWeight.bold,fontSize: 30);
TextStyle workerDetails=TextStyle(fontWeight: FontWeight.bold,);

class UiHelper{
  static customAlertBox(BuildContext context,String text){
    return showDialog(context: context, builder: (BuildContext context){
      return AlertDialog(title:Text(text,style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold,
          fontFamily: 'solway',
          color: Colors.blue
      ),),actions: [
        TextButton(onPressed: (){
          Navigator.pop(context);
        }, child:  Text('Ok',style: main_heading,))
      ],);
    });
  }
}