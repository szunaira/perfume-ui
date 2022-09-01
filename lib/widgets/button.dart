import 'package:flutter/material.dart';
import 'package:perfume/data/constant.dart';

class Button extends StatelessWidget {
  const Button({Key? key, required this.str}) : super(key: key);
//final Function() press;
final String str;
  @override
  Widget build(BuildContext context) {
    return TextButton(style: TextButton.styleFrom(
      primary:bcolor,
      textStyle:bstyle,
    ),
      
      onPressed: (() { }), child: Text(str));
    // return GestureDetector(
    //   onTap: press,
    //   child: Text(str),
    // );
    
  }
}