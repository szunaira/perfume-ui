import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:perfume/widgets/customnav.dart';

class Nextscreen extends StatelessWidget {
  const Nextscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      bottomNavigationBar: const CustomNavbar(),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 220,
            decoration: const BoxDecoration(image:
             DecorationImage(image: 
            // AssetImage('assets/TALHA.png'),
            NetworkImage(""),
             )),
          )
        ],
      ),
    );
  }
}