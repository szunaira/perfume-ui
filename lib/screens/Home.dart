// ignore: file_names
// ignore_for_file: file_names, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:perfume/widgets/CardData.dart';
import 'package:perfume/widgets/ReusedCard.dart';
import 'package:perfume/widgets/customnav.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: const Text(
          "Fragrance",
          style: TextStyle(
              color: Colors.black,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold),
        ),
       
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Container(
              width: 50,
              height: 50,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://i.pinimg.com/originals/f6/6f/ed/f66fed0576eee19420eea20fcbb03b38.jpg'),
                      fit: BoxFit.scaleDown)),
            ),
          )
        ],
      ),
      drawer: const Drawer(),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 15,
          right: 15,
          bottom: 15,
        ),
        child: Column(
          children: [
            Expanded(
                child: Row(
              children: [
                Expanded(
                    child: Container(
                        decoration: const BoxDecoration(
                            shape: BoxShape.rectangle,
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://i.ytimg.com/vi/NZOknhAdoi8/maxresdefault.jpg"))),
                        child: Stack(
                          children: [
                             Positioned(
                              top: 10,
                              left: 80,
                              right: 0.0,
                              bottom: 20,
                              child: Align(
                                //AlignmentDirectional start horizontal direction and y has vertical direction
                                //alignment: AlignmentDirectional(1.0,-1.0 ),
                                alignment: Alignment.centerRight,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children:const [
                                    Text(
                                      "THIS SEASON'S",
                                      style: TextStyle(
                                          backgroundColor: Colors.white,
                                          color: Colors.black,
                                          fontSize: 22,
                                          fontWeight: FontWeight.w800),
                                    ),
                                    Text(
                                      " LATEST",
                                      style: TextStyle(
                                          backgroundColor: Colors.white,
                                          color: Colors.black,
                                          fontSize: 22,
                                          fontWeight: FontWeight.w800),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomLeft,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children:  [
                                  // IconTheme(data:, child: child)
                                  Container(width: 30,height: 30, color: Colors.white,child: const Icon(Icons.arrow_back,color: Colors.black,)),
                                  const SizedBox(width: 1,),
                                  Container(width: 30,height: 30, color: Colors.white,child: const Icon(Icons.arrow_forward,color: Colors.black,)),
                                  
                                  // Icon(Icons.arrow_forward,color: Colors.white, )
                                ],
                              ),
                            ),
                          ],
                        )))
              ],
            )),
            const SizedBox(
              height: 20,
            ),
            Expanded(
                child: Row(
              children: const [
                Expanded(
                    child: ReusedCard(
                        cld: CardData(
                  icn: Icons.favorite_border,
                  txt: "bagz",
                  img: NetworkImage(
                      "https://images.unsplash.com/photo-1590874103328-eac38a683ce7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=738&q=80"),
                ),
                
                )
                ),
                SizedBox(
                  width: 15,
                  height: 10,
                ),
                Expanded(
                    child: ReusedCard(
                        cld: CardData(
                  txt: "bag1",
                  icn: Icons.favorite_border,
                  img: NetworkImage(
                      "http://www.theperfumeshop.pk/wp-content/uploads/2021/09/Bleu-De-Chanel-Parfum-By-Chanel-the-perfume-shop-pk.jpg"),
                )))
              ],
            )),
            const SizedBox(
              height: 30,
            ),
            Expanded(
                child: Row(
              children: const [
                Expanded(
                    child: ReusedCard(
                        cld: CardData(
                  txt: "bagz",
                  icn: Icons.favorite_border,
                  img: NetworkImage(
                      'https://cdn.luxe.digital/media/20220128171854/best-perfumes-women-philosophy-fresh-cream-luxe-digital-780x520.jpg'),
               
                ))),
                SizedBox(
                  width: 15,
                  height: 10,
                ),
                Expanded(
                    child: ReusedCard(
                        cld: CardData(
                  txt: "bag1",
                  icn: Icons.favorite_border,
                  img: NetworkImage(''),
                )))
              ],
            ))
          ],
        ),
      ),
      bottomNavigationBar: const CustomNavbar() ,
    );
  }
}
