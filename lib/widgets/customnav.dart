

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:perfume/screens/Home.dart';
import 'package:perfume/screens/nextscreen.dart';


class CustomNavbar extends StatelessWidget {
  const CustomNavbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      elevation: 5,
      notchMargin: 5,
      clipBehavior: Clip.antiAlias,
      color: Colors.grey,
      shape: const AutomaticNotchedShape(
        RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(0), topRight: Radius.circular(0))),
        RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(0),
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: IconButton(
              onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const Home()));
              },
              icon: const Icon(
                Icons.home_outlined,
                color: Color.fromARGB(255, 0, 0, 0),
                size: 25,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const Nextscreen()));
              },
              icon: const Icon(
                Icons.store_outlined,
                color: Color.fromRGBO(220, 34, 34, 1),
                size: 25,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: IconButton(
              onPressed: () {
              
              },
              icon: const Icon(
                Icons.card_giftcard_outlined,
                color: Color.fromRGBO(220, 34, 34, 1),
                size: 25,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: IconButton(
              onPressed: () {
              
              },
              icon: const Icon(
                Icons.account_circle_outlined,
                color: Color.fromRGBO(220, 34, 34, 1),
                size: 25,
              ),
            ),
          ),
        ],
      ),
    );
  }
}