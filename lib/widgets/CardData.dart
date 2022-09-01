

// ignore_for_file: file_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:perfume/widgets/button.dart';



class CardData extends StatelessWidget {
  const CardData({Key? key,  required this.icn,required this.txt,
  required this.img,
  }) : super(key: key);
final IconData icn;
final String txt;
final NetworkImage img;
//final NetworkImage img;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
Column(
     mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [

    Align(
      alignment: Alignment.topRight,
       child: Icon(icn),
    ),
    Container(
      width: 50,
      height: 50,
   
      decoration:  BoxDecoration(   color: Colors.black45,image: DecorationImage(image: img,
    fit: BoxFit.cover
     )),),
          
          Text(txt),
          const Button(str: "Shop Now"),
      ],
    ),
      ],
    );
  }
}