// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:perfume/data/constant.dart';



class ReusedCard extends StatelessWidget {
  const ReusedCard(
      {Key? key, required this.cld,
      // required this.img
      })
      : super(key: key);
 
  //final Image img;
  final Widget cld;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color:kCardColor,
        borderRadius: BorderRadius.circular(3),
      //  image: DecorationImage(image: img),
      ),
      child: cld,
    );
  }
}
